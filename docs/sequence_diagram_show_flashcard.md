# Sequence Diagram: Proses Menampilkan Flashcard (Show Flashcard)

Alur menampilkan flashcard (Clean Architecture): buka halaman → muat data lewat Use Case & Repository → tampilkan ke user. Detail sedang, cocok untuk skripsi.

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
    participant UI as Flashcard View
    participant C as FlashcardController
  end

  box Domain Layer
    participant UC as FlashcardUseCase
    participant REPO as FlashcardRepository
  end

  box Data Layer
    participant REPO_IMPL as FlashcardRepositoryImpl
    participant DS as Flashcard DataSource
  end

  U->>UI: Buka halaman flashcard
  UI->>C: Initialize controller
  C->>UC: getFlashcards() / getFlashcardById(id)
  UC->>REPO: getFlashcards() / getFlashcardById(id)
  REPO->>REPO_IMPL: get data
  REPO_IMPL->>DS: Ambil data flashcard
  DS-->>REPO_IMPL: Data
  REPO_IMPL-->>REPO: FlashcardEntity / List
  REPO-->>UC: Result
  UC-->>C: Result
  alt Data valid
    C-->>UI: Update state
    UI-->>U: Tampilkan flashcard
  else Data tidak ada / error
    C-->>UI: Error / navigate back
    UI-->>U: Pesan error atau kembali
  end
```

---

## Keterangan Ringkas

| Lapisan | Komponen | Peran |
|--------|----------|--------|
| **Presentation** | Flashcard View, Controller | UI menampilkan data; Controller panggil Use Case dan update state. |
| **Domain** | FlashcardUseCase, FlashcardRepository | Use Case orkestrasi; Repository kontrak akses data. |
| **Data** | FlashcardRepositoryImpl, DataSource | Repo Impl ambil dari DataSource, kembalikan entity ke domain. |

Alur: User buka halaman → UI inisialisasi Controller → Controller panggil Use Case → Use Case panggil Repository → Repo Impl ambil dari DataSource → data kembali ke UI → tampilkan atau error. Clean Architecture: Presentation → Domain → Data.
