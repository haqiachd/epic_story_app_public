# Sequence Diagram: Alur Membaca Buku dengan Data Anak (Clean Architecture)

Diagram ini menggambarkan interaksi pengguna dengan fitur baca buku serta alur data profil anak dan riwayat bacaan mengikuti lapisan Clean Architecture. Diagram dibuat untuk keperluan skripsi sehingga menggunakan istilah yang umum dan tidak terlalu teknis.

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
    participant UI as Book Read View
    participant C as BookReadController
    participant NAV as Navigation Arguments
  end

  box Domain Layer
    participant ChildrenUC as ChildrenUseCase
    participant HistoryUC as BookHistoryUseCase
  end

  box Data Layer
    participant FS as Firestore DataSource
  end

  %% Interaksi awal
  U->>UI: Buka halaman baca buku
  UI->>C: Initialize controller
  C->>NAV: Ambil navigation arguments

  alt Argument valid BookEntity
    NAV-->>C: BookEntity
    C->>C: Initialize book state

    C->>ChildrenUC: Request children data
    ChildrenUC->>FS: Fetch current children (profil & koleksi)
    FS-->>ChildrenUC: Children data
    ChildrenUC-->>C: Return children collections

    C->>HistoryUC: Request book history
    HistoryUC->>FS: Fetch history by bookId
    FS-->>HistoryUC: History or null
    HistoryUC-->>C: History result

    C->>C: Sinkronisasi halaman terakhir
    C-->>UI: Update tampilan buku
    UI-->>U: Tampilkan halaman buku
  else Argument tidak valid
    C->>UI: Navigate back
    UI-->>U: Kembali ke halaman utama
  end

  loop Aktivitas membaca
    U->>UI: Geser halaman
    UI->>C: onPageChanged
    C->>C: Update indeks halaman
    C->>HistoryUC: Update reading history
    HistoryUC->>FS: Simpan riwayat
    C-->>UI: Update tampilan halaman
    UI-->>U: Halaman diperbarui
  end

  %% Pengguna keluar, sinkron ke server
  U->>UI: Keluar (tombol back)
  UI->>C: onClose
  C->>HistoryUC: Push history to remote
  HistoryUC->>FS: Update book history (Firestore)
  FS-->>HistoryUC: Success
  HistoryUC-->>C: Done
  C-->>UI: Navigate back
  UI-->>U: Kembali ke halaman sebelumnya
```

---

## Keterangan Ringkas

| Lapisan | Peran | File terkait |
|--------|--------|----------------|
| **Presentation** | Book Read View menampilkan UI; BookReadController menangani input dan memanggil use case; Navigation Arguments membawa data buku (BookEntity). | `book_read_page.dart`, `book_read_controller.dart` |
| **Domain** | ChildrenUseCase mengurus data anak (profil, koleksi); BookHistoryUseCase mengurus riwayat bacaan (fetch & update). Di kode aktual, keduanya diimplementasikan lewat `ChildrenUsecase` dan `ChildrenRepository`. | `children_usecase.dart`, `children_repository.dart` |
| **Data** | Firestore DataSource mengakses Firebase/Firestore untuk data anak dan riwayat buku. | `children_remote_data_source.dart`, `children_repository_impl.dart` |

Alur yang digambarkan:

1. **User membuka halaman baca buku** → Controller mengambil argument navigasi (BookEntity) → jika valid, meminta data anak dan riwayat buku lewat use case → Data Layer (FS) mengambil dari Firestore → tampilan buku diperbarui.
2. **Loop aktivitas membaca** → User geser halaman → Controller update indeks dan meminta update riwayat lewat HistoryUC → FS menyimpan riwayat.
3. **User keluar** → Controller memicu push history ke remote → HistoryUC memanggil FS untuk update di Firestore → navigasi kembali.

Dependency mengalir dari Presentation → Domain → Data, sesuai Clean Architecture.
