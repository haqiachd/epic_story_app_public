import 'package:epic_story_app/domain/entities/children_collection_entity.dart';
import 'package:epic_story_app/domain/entities/collections/flashcard_collection_entity.dart';

class ChildrenEntity {
  final String? userId;
  final List<ChildrenCollectionEntity>? collections;
  final List<FlashCardCollectionEntity>? flashcardCollections;
  final String? email;
  final String? fullName;
  final String? photoPicture;
  final int? gradeClass;
  final String? gender;
  final DateTime? dateBirth;
  final DateTime? lastSignInAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const ChildrenEntity({
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

  ChildrenEntity copyWith({
    
    String? userId,
    List<ChildrenCollectionEntity>? collections,
    List<FlashCardCollectionEntity>? flashcardCollections,
    String? email,
    String? password,
    String? fullName,
    String? photoPicture,
    int? gradeClass,
    String? gender,
    DateTime? dateBirth,
    DateTime? lastSignInAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ChildrenEntity(
      userId: userId ?? this.userId,
      collections: collections ?? this.collections,
      flashcardCollections: flashcardCollections ?? this.flashcardCollections,
      email: email ?? this.email,
      fullName: fullName ?? this.fullName,
      photoPicture: photoPicture ?? this.photoPicture,
      gradeClass: gradeClass ?? this.gradeClass,
      gender: gender ?? this.gender,
      dateBirth: dateBirth ?? this.dateBirth,
      lastSignInAt: lastSignInAt ?? this.lastSignInAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

