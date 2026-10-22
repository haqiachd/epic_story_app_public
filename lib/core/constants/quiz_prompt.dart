class QuizPrompt {
  static String _categoryRule(String? category) {
    if (category == null || category.trim().isEmpty) return '';
    return '- WAJIB: Soal harus sesuai mata pelajaran "${category.trim()}". Jangan membuat soal dari mata pelajaran lain.\n';
  }

  static String _previousQuestionsRule(List<String> previousQuestions) {
    final numbered = previousQuestions
        .asMap()
        .entries
        .map((e) => '  ${e.key + 1}. "${e.value}"')
        .join('\n');
    return '''
- WAJIB: Buat pertanyaan yang BERBEDA dari pertanyaan sebelumnya. Fokus pada aspek/topik lain dari materi.
- Pertanyaan sebelumnya yang TIDAK BOLEH diulang atau dibuat mirip:
$numbered
''';
  }

  static String multipleChoicePrompt({
    required String text,
    String? category,
    List<String> previousQuestions = const [],
  }) {
    final catRule = _categoryRule(category);
    final prevRule = previousQuestions.isNotEmpty
        ? _previousQuestionsRule(previousQuestions)
        : '';
    return """
Kamu adalah pembuat soal kuis anak. Buat 1 soal pilihan ganda dalam Bahasa Indonesia dari materi berikut.

Materi:
<materi>
$text
</materi>

Aturan:
$catRule- Pertanyaan harus mandiri, tidak merujuk "teks di atas" atau "bacaan".
- Gaya bahasa seperti buku pelajaran anak SD.
- Tepat 4 pilihan jawaban, hanya 1 yang benar.
- 3 pilihan pengecoh harus masuk akal tapi jelas salah bagi yang paham materi.
- correctedIndex = indeks (0-3) dari jawaban benar di array choices.
- Sertakan explanation singkat (1-2 kalimat) mengapa jawaban benar.
$prevRule- Output hanya JSON valid, tanpa teks lain.

Format:
{"question":"...","quizType":1,"choices":["...","...","...","..."],"correctedIndex":0,"explanation":"..."}
""";
  }

  static String fillBlankPrompt({
    required String text,
    String? category,
    List<String> previousQuestions = const [],
  }) {
    final catRule = _categoryRule(category);
    final prevRule = previousQuestions.isNotEmpty
        ? _previousQuestionsRule(previousQuestions)
        : '';
    return """
Kamu adalah pembuat soal kuis anak. Buat 1 soal isian rumpang dalam Bahasa Indonesia dari materi berikut.

Materi:
<materi>
$text
</materi>

Aturan:
$catRule- Buat 1 paragraf pendek yang mandiri, tidak merujuk "teks di atas" atau "bacaan".
- Gaya bahasa seperti buku pelajaran anak SD.
- Tepat 4 blank (b1-b4) yang menghilangkan kata penting (benda/kerja/istilah), bukan kata penghubung.
- Tiap jawaban blank maksimal 2 kata, unik, dan tidak ambigu.
- Tepat 4 options (o1-o4), setiap option punya correctBlankId yang cocok tepat 1 blank.
- Kalimat harus tetap natural dan bisa dipahami saat blank terisi.
- Sertakan explanation singkat (1-2 kalimat).
$prevRule- Output hanya JSON valid, tanpa teks lain.

Format:
{"quizType":2,"sentence":[{"type":"text","value":"..."},{"type":"blank","id":"b1"},{"type":"text","value":"..."},{"type":"blank","id":"b2"},{"type":"text","value":"..."},{"type":"blank","id":"b3"},{"type":"text","value":"..."},{"type":"blank","id":"b4"}],"options":[{"id":"o1","value":"...","correctBlankId":"b1"},{"id":"o2","value":"...","correctBlankId":"b2"},{"id":"o3","value":"...","correctBlankId":"b3"},{"id":"o4","value":"...","correctBlankId":"b4"}],"explanation":"..."}
""";
  }

  static String groupQuizPrompt({
    required String text,
    String? category,
    List<String> previousQuestions = const [],
  }) {
    final catRule = _categoryRule(category);
    final prevRule = previousQuestions.isNotEmpty
        ? _previousQuestionsRule(previousQuestions)
        : '';
    return """
Kamu adalah pembuat soal kuis anak. Buat 1 soal pengelompokan dalam Bahasa Indonesia dari materi berikut.

Materi:
<materi>
$text
</materi>

Aturan:
$catRule- Soal harus mandiri, tidak merujuk "teks di atas" atau "bacaan".
- Gaya bahasa dan konsep sederhana untuk anak SD.
- Tepat 2 group (g1, g2) dengan title yang jelas dan berbeda kategori.
- Tepat 8 options (o1-o8): 4 untuk g1 dan 4 untuk g2.
- Gunakan kata benda konkret yang mudah divisualisasikan anak.
- Setiap item hanya cocok ke satu group, tidak ambigu.
- Sertakan explanation singkat (1-2 kalimat).
$prevRule- Output hanya JSON valid, tanpa teks lain.

Format:
{"quizType":3,"groups":[{"id":"g1","title":"..."},{"id":"g2","title":"..."}],"options":[{"id":"o1","value":"...","correctGroupId":"g1"},{"id":"o2","value":"...","correctGroupId":"g1"},{"id":"o3","value":"...","correctGroupId":"g1"},{"id":"o4","value":"...","correctGroupId":"g1"},{"id":"o5","value":"...","correctGroupId":"g2"},{"id":"o6","value":"...","correctGroupId":"g2"},{"id":"o7","value":"...","correctGroupId":"g2"},{"id":"o8","value":"...","correctGroupId":"g2"}],"explanation":"..."}
""";
  }
}
