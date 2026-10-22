class BookPageEntity {
  final int? nPage;
  final bool? skipped;
  final String? text;

  const BookPageEntity({
    this.nPage,
    this.skipped,
    this.text,
  });

  BookPageEntity copyWith({
    int? nPage,
    bool? skipped,
    String? text,
  }) {
    return BookPageEntity(
      nPage: nPage ?? this.nPage,
      skipped: skipped ?? this.skipped,
      text: text ?? this.text,
    );
  }
}
