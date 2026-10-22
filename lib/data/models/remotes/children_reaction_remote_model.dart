import 'package:cloud_firestore/cloud_firestore.dart';

class ChildrenReactionRemoteModel {
  final String? bookId;
  final bool? clappingHand;
  final bool? heart;
  final bool? laughing;
  final bool? lightBulb;
  final Timestamp? updatedAt;

  const ChildrenReactionRemoteModel({
    this.bookId,
    this.clappingHand,
    this.heart,
    this.laughing,
    this.lightBulb,
    this.updatedAt,
  });

  factory ChildrenReactionRemoteModel.fromJson(
    Map<String, dynamic> json,
    String bookId,
  ) {
    return ChildrenReactionRemoteModel(
      bookId: bookId,
      clappingHand: json['clappingHand'] as bool?,
      heart: json['heart'] as bool?,
      laughing: json['laughing'] as bool?,
      lightBulb: json['lightBulb'] as bool?,
      updatedAt: json['updatedAt'] as Timestamp?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'bookId': bookId,
      'clappingHand': clappingHand,
      'heart': heart,
      'laughing': laughing,
      'lightBulb': lightBulb,
      'updatedAt': updatedAt ?? Timestamp.now(),
    };
  }

  ChildrenReactionRemoteModel copyWith({
    String? bookId,
    bool? clappingHand,
    bool? heart,
    bool? laughing,
    bool? lightBulb,
    Timestamp? updatedAt,
  }) {
    return ChildrenReactionRemoteModel(
      bookId: bookId ?? this.bookId,
      clappingHand: clappingHand ?? this.clappingHand,
      heart: heart ?? this.heart,
      laughing: laughing ?? this.laughing,
      lightBulb: lightBulb ?? this.lightBulb,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
