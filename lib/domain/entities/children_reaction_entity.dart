class ChildrenReactionEntity {
  final String? bookId;
  final bool? clappingHand;
  final bool? heart;
  final bool? laughing;
  final bool? lightBulb;
  final DateTime? updatedAt;

  const ChildrenReactionEntity({
    this.bookId,
    this.clappingHand,
    this.heart,
    this.laughing,
    this.lightBulb,
    this.updatedAt,
  });

  ChildrenReactionEntity copyWith({
    String? bookId,
    bool? clappingHand,
    bool? heart,
    bool? laughing,
    bool? lightBulb,
    DateTime? updatedAt,
  }) {
    return ChildrenReactionEntity(
      bookId: bookId ?? this.bookId,
      clappingHand: clappingHand ?? this.clappingHand,
      heart: heart ?? this.heart,
      laughing: laughing ?? this.laughing,
      lightBulb: lightBulb ?? this.lightBulb,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
