import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/core/utils/timestamp_converter.dart';
import 'package:epic_story_app/data/models/remotes/children_collection_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/collections/flashcard_collection_remote_model.dart';

class ChildrenRemoteModel {
  final String? userId;
  final Map<String, ChildrenCollectionRemoteModel>? collections;
  final Map<String, FlashcardCollectionRemoteModel>? flashcardCollections;
  final String? email;
  final String? fullName;
  final String? photoPicture;
  final int? gradeClass;
  final String? gender;
  final Timestamp? dateBirth;
  final Timestamp? lastSignInAt;
  final Timestamp? createdAt;
  final Timestamp? updatedAt;

  const ChildrenRemoteModel({
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

  factory ChildrenRemoteModel.fromJson(Map<String, dynamic> json, String key) {
    return ChildrenRemoteModel(
      userId: key,
      email: json['email'] as String?,
      fullName: json['fullName'] as String?,
      photoPicture: json['photoPicture'] as String?,
      gradeClass: json['gradeClass'] as int?,
      gender: json['gender'] as String?,
      dateBirth: TimestampConverter.fromMap(json['dateBirth']),
      lastSignInAt: TimestampConverter.fromMap(json['lastSignInAt']),
      createdAt: TimestampConverter.fromMap(json['createdAt']),
      updatedAt: TimestampConverter.fromMap(json['updatedAt']),
      collections: (json['collections'] as Map<String, dynamic>?)?.map(
        (key, value) => MapEntry(
          key,
          ChildrenCollectionRemoteModel.fromJson(
            value as Map<String, dynamic>?,
          ),
        ),
      ),
      flashcardCollections:
          (json['collectionFlashcards'] as Map<String, dynamic>?)?.map(
        (key, value) => MapEntry(
          key,
          FlashcardCollectionRemoteModel.fromJson(
            value as Map<String, dynamic>?,
          ),
        ),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'collections': collections?.map(
        (key, value) => MapEntry(key, value.toJson()),
      ),
      'collectionFlashcards': flashcardCollections?.map(
        (key, value) => MapEntry(key, value.toJson()),
      ),
      'email': email,
      'fullName': fullName,
      'photoPicture': photoPicture,
      'gradeClass': gradeClass,
      'gender': gender,
      'dateBirth': dateBirth,
      'lastSignInAt': lastSignInAt,
      'createdAt': createdAt ?? Timestamp.now(),
      'updatedAt': updatedAt ?? Timestamp.now(),
      'userId': userId,
    };
  }

  Map<String, dynamic> replaceSignIn() {
    return {
      'email': email,
      'fullName': fullName,
      'photoPicture': photoPicture,
      'lastSignInAt': lastSignInAt,
      'updatedAt': updatedAt ?? Timestamp.now(),
    };
  }

  ChildrenRemoteModel copyWith({
    String? userId,
    Map<String, ChildrenCollectionRemoteModel>? collections,
    Map<String, FlashcardCollectionRemoteModel>? flashcardCollections,
    String? email,
    String? fullName,
    String? photoPicture,
    int? gradeClass,
    String? gender,
    Timestamp? dateBirth,
    Timestamp? lastSignInAt,
    Timestamp? createdAt,
    Timestamp? updatedAt,
  }) {
    return ChildrenRemoteModel(
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
