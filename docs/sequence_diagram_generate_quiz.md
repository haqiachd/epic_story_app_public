# Sequence Diagram: Alur Generate Quiz (Clean Architecture)

Diagram ini menggambarkan alur pembuatan soal kuis berdasarkan materi buku yang baru selesai dimuat. Generate quiz dipicu otomatis setelah halaman baca buku selesai memuat konten dan riwayat. Diagram mengikuti format skripsi (tidak terlalu teknis) dan lapisan Clean Architecture.

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
  end

  box Domain Layer
    participant QuizUC as QuizUseCase
  end

  box Data Layer
    participant API as Gemini DataSource
  end

  %% Konteks: buku sudah dimuat, teks materi tersedia
  Note over U,API: Setelah buku & riwayat selesai dimuat, sistem memicu generate quiz

  U->>UI: Buka & baca buku (konten sudah tampil)
  UI->>C: loadBook() selesai
  C->>C: Siapkan teks materi (allTextTheory)

  alt Buku mendukung quiz & teks tersedia & belum ada quiz
    C->>C: generateQuiz()
    C->>C: Tentukan tipe quiz (1=Pilihan Ganda, 2=Isian, 3=Kelompok)
    C->>C: Bangun prompt dari teks materi

    C->>+QuizUC: generate(prompt)
    QuizUC->>+API: generate(prompt)
    API->>API: Request ke Gemini API
    API-->>-QuizUC: JSON soal kuis
    QuizUC-->>-C: Return JSON string

    alt Response valid
      C->>C: Parse JSON ke entity kuis
      C->>C: Simpan ke riwayat buku (updateBookHistory)
      C-->>UI: Quiz siap ditampilkan
      UI-->>U: Tampilan siap (nanti bisa ke halaman quiz)
    else Response gagal / null
      C->>C: Log gagal generate
      C-->>UI: Quiz belum tersedia
    end
  else Buku tidak support quiz / teks kosong / quiz sudah ada
    C->>C: Skip generate
    C-->>UI: Tidak generate quiz
  end

  %% Interaksi: user ke halaman terakhir lalu mau buka quiz
  U->>UI: Geser ke halaman terakhir, tap "Lanjut / Quiz"
  UI->>C: goToQuizPage()
  alt Quiz sudah tersedia
    C-->>UI: Navigate ke halaman Quiz
    UI-->>U: Tampilkan halaman soal kuis
  else Quiz belum tersedia
    C-->>UI: Tampilkan pesan "Quiz belum tersedia"
    UI-->>U: Snackbar / feedback
  end
```

---

## Keterangan Ringkas

| Lapisan | Peran | File terkait |
|--------|--------|----------------|
| **Presentation** | Book Read View menampilkan PDF dan tombol navigasi; BookReadController memicu generateQuiz setelah loadBook, membangun prompt dari teks materi, memanggil use case, lalu mem-parse hasil dan menyimpan ke riwayat buku. | `book_read_page.dart`, `book_read_controller.dart` |
| **Domain** | QuizUseCase menyediakan operasi generate(prompt); tidak bergantung pada sumber data konkret. | `quiz_usecase.dart`, `quiz_repository.dart` |
| **Data** | Gemini DataSource memanggil API Gemini (generateContent) dengan prompt dan mengembalikan respons JSON. | `quiz_remote_data_source.dart`, `quiz_repository_impl.dart` |

Alur yang digambarkan:

1. **Pemicu generate**  
   Setelah buku dan riwayat selesai dimuat, controller memanggil `generateQuiz()`. Jika buku mendukung quiz, ada teks materi, dan belum ada quiz yang sudah digenerate, controller membangun prompt sesuai tipe quiz (1= Pilihan Ganda, 2= Isian Rumpang, 3= Kelompok) lalu memanggil QuizUseCase.

2. **Generate soal**  
   QuizUseCase memanggil repository → implementasi memanggil Gemini DataSource → request ke Gemini API → respons JSON dikembalikan ke controller. Controller mem-parse JSON ke entity, lalu menyimpan ke riwayat buku (via updateBookHistory).

3. **Interaksi pengguna**  
   Pengguna membalik sampai halaman terakhir lalu mengetuk tombol lanjut/quiz. Controller memeriksa apakah quiz sudah tersedia; jika ya, navigasi ke halaman quiz; jika tidak, menampilkan pesan "Quiz belum tersedia".

Dependency mengalir dari Presentation → Domain → Data, sesuai Clean Architecture.
