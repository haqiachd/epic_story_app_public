class BookPageRemoteModel {
  final int? nPage;
  final bool? skipped;
  final String? text;

  const BookPageRemoteModel({
    this.nPage,
    this.skipped,
    this.text,
  });

  factory BookPageRemoteModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return const BookPageRemoteModel();

    return BookPageRemoteModel(
      nPage: json['nPage'] as int?,
      skipped: json['skipped'] as bool?,
      text: json['text'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nPage': nPage,
      'skipped': skipped,
      'text': text,
    };
  }
}
