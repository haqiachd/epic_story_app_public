# Sequence Diagram: Alur Play Quiz (Clean Architecture)

Alur mengerjakan quiz (play quiz): pengguna membuka halaman Quiz, mengisi jawaban, dan menyimpan riwayat melalui semua lapisan Clean Architecture (Presentation → Domain → Data). Tingkat detail sedang, cocok untuk skripsi.

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
    participant UI as Book Quiz View
    participant C as BookQuizController
    participant NAV as Navigation Arguments
  end

  box Domain Layer
    participant UC as ChildrenUseCase
    participant REPO as ChildrenRepository
  end

  box Data Layer
    participant REPO_IMPL as ChildrenRepositoryImpl
    participant DS as Children DataSource
  end

  U->>UI: Buka halaman Quiz
  UI->>C: Initialize
  C->>NAV: Ambil arguments
  alt Valid
    NAV-->>C: BookHistoryEntity
    C-->>UI: Tampilkan soal
    UI-->>U: Tampilan quiz

    U->>UI: Jawab & Cek Jawaban
    UI->>C: onCheckAnswer()
    C->>UC: updateBookHistory
    UC->>REPO: updateBookHistory
    REPO->>REPO_IMPL: update
    REPO_IMPL->>DS: Simpan riwayat
    DS-->>REPO_IMPL: Ok
    REPO_IMPL-->>REPO: Ok
    REPO-->>UC: Ok
    UC-->>C: Ok
    C-->>UI: Update
    UI-->>U: Feedback

    U->>UI: Selesai
    UI->>C: closePage()
    C-->>UI: Kembali
    UI-->>U: Halaman baca
  else Tidak valid
    C-->>UI: Quiz belum tersedia
    UI-->>U: Pesan
  end
```

---

## Keterangan Ringkas

| Lapisan | Komponen | Peran |
|--------|----------|--------|
| **Presentation** | Book Quiz View, BookQuizController | UI menampilkan soal dan tombol Cek Jawaban; Controller ambil NAV args, kelola state jawaban, panggil Use Case untuk simpan riwayat. |
| **Domain** | ChildrenUseCase, ChildrenRepository | Use Case memanggil Repository; Repository kontrak akses data riwayat buku. |
| **Data** | ChildrenRepositoryImpl, Children DataSource | Repo Impl meneruskan updateBookHistory ke DataSource (lokal/remote); data disimpan lalu dikembalikan. |

Alur: User buka halaman Quiz → Controller ambil arguments → jika valid, tampilkan soal. Saat user pilih jawaban dan tap Cek Jawaban, Controller evaluasi lalu memanggil ChildrenUseCase → Repository → Repository Impl → DataSource (simpan riwayat) → balik ke UI untuk feedback. User selesai/back → closePage → kembali ke halaman baca. Dependency: Presentation → Domain → Data (Clean Architecture).
