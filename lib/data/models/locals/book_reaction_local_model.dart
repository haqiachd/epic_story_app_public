import 'package:isar_community/isar.dart';

part 'book_reaction_local_model.g.dart';

@embedded
class BookReactionLocalModel {
  final int? clappingHand;
  final int? heart;
  final int? laughing;
  final int? lightBulb;

  const BookReactionLocalModel({
    this.clappingHand,
    this.heart,
    this.laughing,
    this.lightBulb,
  });
}
