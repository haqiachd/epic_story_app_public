# Use Case Diagram - Epic Story App

Dokumen ini merangkum use case utama lintas fitur aplikasi: onboarding, book, flashcard, collection (favorite), reward, profile, serta layanan eksternal.

```mermaid
flowchart LR

	%% Actors
	A[Anak / Student User]

	%% System boundary
	subgraph S[System: Epic Story App]

		%% Onboarding & account
		subgraph O[Onboarding & Akun]
			UC_Splash([Buka Aplikasi])
			UC_Login([Login dengan Google])
			UC_ProfileSetup([Isi Profil Anak: Gender, Tanggal Lahir, Kelas])
			UC_ViewProfile([Lihat Profil])
			UC_Logout([Logout])
		end

		%% Home and discovery
		subgraph H[Home & Navigasi]
			UC_OpenHome([Akses Home Belajar])
			UC_FilterCategory([Pilih / Filter Kategori])
			UC_OpenBook([Masuk ke Fitur Buku])
			UC_OpenFlashcard([Masuk ke Fitur Flashcard])
			UC_OpenCollection([Masuk ke Fitur Koleksi])
			UC_OpenReward([Masuk ke Fitur Hadiah])
			UC_OpenAITutor([Masuk ke Fitur AI Tutor])
		end

		%% Book feature
		subgraph B[Book Feature]
			UC_ViewBookList([Lihat Daftar Buku])
			UC_ReadBook([Baca Buku PDF])
			UC_TTSBook([Dengarkan TTS Buku])
			UC_SaveBookProgress([Simpan Progress Baca Buku])
			UC_GenerateBookQuiz([Generate Quiz Buku])
			UC_DoBookQuiz([Kerjakan Quiz Buku])
			UC_ClaimBookReward([Claim Reward Buku])
			UC_ViewBookHistory([Lihat Riwayat Buku])
			UC_ReactBook([Beri Reaksi ke Buku])
			UC_AddBookToCollection([Tambah Buku ke Koleksi])
		end

		%% Flashcard feature
		subgraph FC[Flashcard Feature]
			UC_ViewFlashcardList([Lihat Daftar Flashcard])
			UC_ReadFlashcard([Baca Flashcard])
			UC_TTSFlashcard([Dengarkan TTS Flashcard])
			UC_SaveFlashcardProgress([Simpan Progress Flashcard])
			UC_GenerateFlashcardQuiz([Generate Quiz Flashcard])
			UC_DoFlashcardQuiz([Kerjakan Quiz Flashcard])
			UC_ViewFlashcardResult([Lihat Hasil Quiz Flashcard])
			UC_ClaimFlashcardReward([Claim Reward Flashcard])
			UC_ViewFlashcardHistory([Lihat Riwayat Flashcard])
			UC_AddFlashcardToCollection([Tambah Flashcard ke Koleksi])
		end

		%% Collection feature
		subgraph C[Collection / Favorite Feature]
			UC_CreateCollection([Buat Koleksi Buku / Flashcard])
			UC_ViewCollection([Lihat Daftar Koleksi])
			UC_ViewCollectionDetail([Lihat Detail Koleksi])
			UC_RemoveItemCollection([Hapus Item dari Koleksi])
			UC_OpenItemFromCollection([Buka Item dari Koleksi])
		end

		%% Reward feature
		subgraph R[Reward Feature]
			UC_ViewRewardHome([Lihat Daftar Konten Selesai])
			UC_OpenRewardClaim([Buka Halaman Klaim Reward])
			UC_SelectThreeReward([Pilih 3 Reward])
			UC_SaveClaimedReward([Simpan Reward Terklaim])
		end
	end

	%% Main actor associations
	A --> UC_Splash
	A --> UC_Login
	A --> UC_ProfileSetup
	A --> UC_OpenHome
	A --> UC_ViewProfile
	A --> UC_Logout

	%% Home navigation relations
	UC_OpenHome --> UC_FilterCategory
	UC_OpenHome --> UC_OpenBook
	UC_OpenHome --> UC_OpenFlashcard
	UC_OpenHome --> UC_OpenCollection
	UC_OpenHome --> UC_OpenReward
	UC_OpenHome --> UC_OpenAITutor

	%% Book flow
	UC_OpenBook --> UC_ViewBookList
	UC_ViewBookList --> UC_ReadBook
	UC_ReadBook --> UC_TTSBook
	UC_ReadBook --> UC_SaveBookProgress
	UC_ReadBook --> UC_GenerateBookQuiz
	UC_ReadBook --> UC_AddBookToCollection
	UC_ReadBook --> UC_ReactBook
	UC_GenerateBookQuiz --> UC_DoBookQuiz
	UC_DoBookQuiz --> UC_ClaimBookReward
	UC_ViewBookList --> UC_ViewBookHistory

	%% Flashcard flow
	UC_OpenFlashcard --> UC_ViewFlashcardList
	UC_ViewFlashcardList --> UC_ReadFlashcard
	UC_ReadFlashcard --> UC_TTSFlashcard
	UC_ReadFlashcard --> UC_SaveFlashcardProgress
	UC_ReadFlashcard --> UC_GenerateFlashcardQuiz
	UC_ReadFlashcard --> UC_AddFlashcardToCollection
	UC_GenerateFlashcardQuiz --> UC_DoFlashcardQuiz
	UC_DoFlashcardQuiz --> UC_ViewFlashcardResult
	UC_ViewFlashcardResult --> UC_ClaimFlashcardReward
	UC_ViewFlashcardList --> UC_ViewFlashcardHistory

	%% Collection flow
	UC_OpenCollection --> UC_ViewCollection
	UC_ViewCollection --> UC_CreateCollection
	UC_ViewCollection --> UC_ViewCollectionDetail
	UC_ViewCollectionDetail --> UC_RemoveItemCollection
	UC_ViewCollectionDetail --> UC_OpenItemFromCollection
	UC_OpenItemFromCollection --> UC_ReadBook
	UC_OpenItemFromCollection --> UC_ReadFlashcard

	%% Reward flow
	UC_OpenReward --> UC_ViewRewardHome
	UC_ViewRewardHome --> UC_OpenRewardClaim
	UC_OpenRewardClaim --> UC_SelectThreeReward
	UC_SelectThreeReward --> UC_SaveClaimedReward

```

## Catatan

- Fitur AI Tutor saat ini masih berupa halaman placeholder, tetapi tetap dimasukkan sebagai use case agar peta fitur lengkap.
- Istilah collection pada project direpresentasikan melalui modul Favorite/Koleksi (create, detail, add/remove item).
- Diagram ini fokus pada level bisnis pengguna (high-level), bukan detail implementasi kelas.
- Actor pada diagram disederhanakan menjadi satu actor utama: siswa/pengguna aplikasi.
