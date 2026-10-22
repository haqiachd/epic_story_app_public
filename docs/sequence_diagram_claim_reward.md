# Sequence Diagram: Alur Claim Reward (Clean Architecture)

Diagram ini menggambarkan alur pengguna mengklaim reward buku setelah menyelesaikan quiz. Pengguna memilih 3 gambar reward; data riwayat buku (termasuk reward yang diklaim) disimpan melalui Children Use Case ke Firestore dan penyimpanan lokal. Diagram mengikuti format skripsi dan lapisan Clean Architecture.

---

## Diagram

```mermaid
---
config:
  theme: mc
---
sequenceDiagram
  autonumber

  box User
    participant U as User
  end

  box Presentation Layer
    participant UI as Book Reward View
    participant C as BookRewardController
    participant NAV as Navigation Arguments
  end

  box Domain Layer
    participant ChildrenUC as ChildrenUseCase
  end

  box Data Layer
    participant FS as Firestore DataSource
  end

  %% Masuk halaman reward (dari halaman quiz setelah jawaban benar)
  U->>UI: Buka halaman Claim Reward
  UI->>C: Initialize controller
  C->>NAV: Ambil navigation arguments

  alt Argument valid (BookEntity)
    NAV-->>C: BookEntity
    C->>C: Simpan referensi buku

    C->>+ChildrenUC: getBookHistoryById(bookId)
    ChildrenUC->>+FS: Ambil riwayat buku (lokal)
    FS-->>-ChildrenUC: BookHistoryEntity atau null
    ChildrenUC-->>-C: Riwayat buku

    C->>C: _initRewards() — muat daftar gambar dari book.rewards
    C-->>UI: Tampilkan grid reward & slot pilihan
    UI-->>U: Daftar gambar reward (pilih 3)

  else Argument tidak valid
    C-->>UI: Tidak ada data buku
    UI-->>U: Pesan / tampilan kosong
  end

  loop User memilih 3 gambar
    U->>UI: Pilih atau hapus gambar (tap tile / slot)
    UI->>C: selectReward(index) / removeSelectionAt(slotIndex)
    C->>C: Update selectedQueue
    C-->>UI: Refresh tampilan (counter, slot, tombol)
    UI-->>U: Preview pilihan & teks "Kurang X lagi"
  end

  U->>UI: Tap "Ambil Reward" (setelah 3 terpilih)
  UI->>C: claimReward()

  alt Sudah pilih 3 & riwayat ada
    C->>C: Validasi selectedCount == 3 & history != null
    C->>C: newHistory = history.copyWith(claimedRewards: indeks terpilih)
    C->>C: Tampilkan loading

    C->>+ChildrenUC: updateBookHistory(newHistory, pushToRemote: true)
    ChildrenUC->>+FS: Simpan riwayat ke Firestore (claimed rewards)
    FS-->>-ChildrenUC: Berhasil
    ChildrenUC->>ChildrenUC: Simpan ke lokal
    ChildrenUC-->>-C: Selesai

    C->>C: Sembunyikan loading
    C->>C: bookHistory.value = newHistory
    C->>C: Get.back(result: true)
    C-->>UI: Navigate back
    UI-->>U: Kembali ke halaman sebelumnya
    Note over C: Tampilkan snackbar "Rewards claimed successfully!"
  else Belum pilih 3 atau riwayat tidak ada
    C-->>UI: Snackbar peringatan / error
    UI-->>U: "Pilih 3 gambar terlebih dahulu" / "Riwayat tidak ditemukan"
  end
```

---

## Keterangan Ringkas

| Lapisan | Peran | File terkait |
|--------|--------|----------------|
| **Presentation** | Book Reward View menampilkan grid gambar reward, slot pilihan (3), dan tombol "Ambil Reward"; BookRewardController menerima argument (BookEntity), memuat riwayat buku via getBookHistoryById, menginisialisasi daftar reward dari book.rewards, menangani pilihan pengguna (selectReward, removeSelectionAt), dan saat claim memanggil ChildrenUseCase.updateBookHistory dengan pushToRemote: true. | `book_reward_page.dart`, `book_reward_controller.dart` |
| **Domain** | ChildrenUseCase menyediakan getBookHistoryById dan updateBookHistory; untuk claim, updateBookHistory dipanggil dengan pushToRemote: true agar riwayat (termasuk claimedRewards) disinkronkan ke server. | `children_usecase.dart`, `children_repository.dart` |
| **Data** | Firestore DataSource (via repository impl) mengambil riwayat buku dari lokal (getBookHistoryById); saat claim, updateBookHistory menulis ke Firestore lalu menyimpan salinan ke lokal. | `children_repository_impl.dart`, `children_remote_data_source.dart` |

Alur yang digambarkan:

1. **Masuk halaman reward**  
   User membuka halaman Claim Reward (dari halaman quiz setelah jawaban benar). Controller mengambil argument (BookEntity), memanggil ChildrenUseCase.getBookHistoryById(bookId) untuk mendapatkan riwayat buku saat ini, lalu _initRewards() mengisi daftar gambar dari book.rewards. UI menampilkan grid reward dan slot untuk 3 pilihan.

2. **Memilih 3 gambar**  
   User memilih atau menghapus pilihan lewat tap pada tile atau slot. Controller meng-update selectedQueue; tombol "Ambil Reward" aktif hanya jika selectedCount == 3.

3. **Claim reward**  
   User mengetuk "Ambil Reward". Controller memvalidasi (3 gambar terpilih dan riwayat ada), membentuk newHistory dengan claimedRewards berisi indeks terpilih, menampilkan loading, lalu memanggil ChildrenUseCase.updateBookHistory(newHistory, pushToRemote: true). Use case memicu penyimpanan ke Firestore (data layer) dan ke lokal. Setelah selesai, loading disembunyikan, controller meng-update state, memanggil Get.back(result: true), dan menampilkan snackbar sukses.

Dependency mengalir dari Presentation → Domain → Data, sesuai Clean Architecture.
