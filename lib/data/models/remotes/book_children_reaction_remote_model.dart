import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/core/utils/timestamp_converter.dart';

class BookChildReactionRemoteItem {
  final String? childId;
  final String? fullName;
  final String? profilePicture;
  final Timestamp? reactedAt;
  final String? reactionType;

  const BookChildReactionRemoteItem({
    this.childId,
    this.fullName,
    this.profilePicture,
    this.reactedAt,
    this.reactionType,
  });

  factory BookChildReactionRemoteItem.fromJson(Map<String, dynamic> json, String? key) {

    return BookChildReactionRemoteItem(
      childId: key,
      fullName: json['fullName'] as String?,
      profilePicture: json['profilePicture'] as String?,
      reactedAt: TimestampConverter.fromMap(json['reactedAt']),
      reactionType: json['reactionType'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fullName': fullName,
      'profilePicture': profilePicture,
      'reactedAt': reactedAt ?? Timestamp.now(),
      'reactionType': reactionType,
    };
  }
}
