
class BookReactionEntity {
  final int? clappingHand;
  final int? heart;
  final int? laughing;
  final int? lightBulb;

  const BookReactionEntity({
    this.clappingHand,
    this.heart,
    this.laughing,
    this.lightBulb,
  });

  BookReactionEntity copyWith({
    int? clappingHand,
    int? heart,
    int? laughing,
    int? lightBulb,
  }) {
    return BookReactionEntity(
      clappingHand: clappingHand ?? this.clappingHand,
      heart: heart ?? this.heart,
      laughing: laughing ?? this.laughing,
      lightBulb: lightBulb ?? this.lightBulb,
    );
  }
}