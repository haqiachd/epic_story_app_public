class BookChildReactionEntity {
  final String? childId;
  final String? fullName;
  final String? profilePicture;
  final DateTime? reactedAt;
  final String? reactionType;

  const BookChildReactionEntity({
    this.childId,
    this.fullName,
    this.profilePicture,
    this.reactedAt,
    this.reactionType,
  });

  BookChildReactionEntity copyWith({
    String? childId,
    String? fullName,
    String? profilePicture,
    DateTime? reactedAt,
    String? reactionType,
  }) {
    return BookChildReactionEntity(
      childId: childId ?? this.childId,
      fullName: fullName ?? this.fullName,
      profilePicture: profilePicture ?? this.profilePicture,
      reactedAt: reactedAt ?? this.reactedAt,
      reactionType: reactionType ?? this.reactionType,
    );
  }
}
