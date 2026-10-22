class BookReactionRemoteModel {
  final int? clappingHand;
  final int? heart;
  final int? laughing;
  final int? lightBulb;

  const BookReactionRemoteModel({
    this.clappingHand,
    this.heart,
    this.laughing,
    this.lightBulb,
  });

  factory BookReactionRemoteModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return const BookReactionRemoteModel();

    return BookReactionRemoteModel(
      clappingHand: json['clappingHand'] as int?,
      heart: json['heart'] as int?,
      laughing: json['laughing'] as int?,
      lightBulb: json['lightBulb'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'clappingHand': clappingHand,
      'heart': heart,
      'laughing': laughing,
      'lightBulb': lightBulb,
    };
  }
}
