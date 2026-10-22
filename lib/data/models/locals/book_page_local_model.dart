import 'package:isar_community/isar.dart';

part 'book_page_local_model.g.dart';

@embedded
class BookPageLocalModel {
  final int? nPage;
  final bool? skipped;
  final String? text;

  const BookPageLocalModel({
    this.nPage,
    this.skipped,
    this.text,
  });
}
