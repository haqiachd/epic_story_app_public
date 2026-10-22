import 'package:isar_community/isar.dart';

part 'book_children_reaction_local_model.g.dart';

@Collection()
class BookChildReactionLocalModel {
  Id id = Isar.autoIncrement;
  String? childId;
  String? fullName;
  String? profilePicture;
  DateTime? reactedAt;
  String? reactionType;

  BookChildReactionLocalModel({
    this.childId,
    this.fullName,
    this.profilePicture,
    this.reactedAt,
    this.reactionType,
  });

}
