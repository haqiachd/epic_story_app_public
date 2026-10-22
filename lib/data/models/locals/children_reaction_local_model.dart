import 'package:isar_community/isar.dart';

part 'children_reaction_local_model.g.dart';

@Collection()
class ChildrenReactionLocalModel {
  Id id = Isar.autoIncrement;
  final String? bookId;
  final bool? clappingHand;
  final bool? heart;
  final bool? laughing;
  final bool? lightBulb;
  final DateTime? updatedAt;

  ChildrenReactionLocalModel({
    this.bookId,
    this.clappingHand,
    this.heart,
    this.laughing,
    this.lightBulb,
    this.updatedAt,
  });
}
