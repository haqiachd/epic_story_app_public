import 'package:epic_story_app/data/models/locals/children_collection_local_model.dart';
import 'package:epic_story_app/data/models/locals/collections/flashcard_collection_local_model.dart';
import 'package:isar_community/isar.dart';

part 'children_local_model.g.dart';

@Collection()
class ChildrenLocalModel {
  Id id = Isar.autoIncrement;
  final String? userId;
  final List<ChildrenCollectionLocalModel>? collections;
  final List<FlashCardCollectionLocalModel>? flashcardCollections;
  final String? email;
  final String? fullName;
  final String? photoPicture;
  final int? gradeClass;
  final String? gender;
  final DateTime? dateBirth;
  final DateTime? lastSignInAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  ChildrenLocalModel({
    this.userId,
    this.collections,
    this.flashcardCollections,
    this.email,
    this.fullName,
    this.photoPicture,
    this.gradeClass,
    this.gender,
    this.dateBirth,
    this.lastSignInAt,
    this.createdAt,
    this.updatedAt,
  });
}

