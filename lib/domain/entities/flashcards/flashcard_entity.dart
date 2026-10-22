import 'package:epic_story_app/domain/entities/book_reaction_enttiy.dart';
import 'package:epic_story_app/domain/entities/flashcards/flashcard_card_entity.dart';

class FlashcardEntity {
  final String? flashcardId;
  final String? title;
  final String? summary;
  final String? category;
  final List<int>? grades;
  final int? totalCards;
  final int? totalQuiz;
  final int? reads;
  final bool? isHaveQuiz;
  final bool? isGenerateQuizSupported;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final BookReactionEntity? reactions;
  final List<FlashcardCardEntity>? cards;
  final List<String>? rewards;

  const FlashcardEntity({
    this.flashcardId,
    this.title,
    this.summary,
    this.category,
    this.grades,
    this.totalCards,
    this.totalQuiz,
    this.reads,
    this.isHaveQuiz,
    this.isGenerateQuizSupported,
    this.createdAt,
    this.updatedAt,
    this.reactions,
    this.cards,
    this.rewards,
  });

  FlashcardEntity copyWith({
    String? flashcardId,
    String? title,
    String? summary,
    String? category,
    List<int>? grades,
    int? totalCards,
    int? totalQuiz,
    int? reads,
    bool? isHaveQuiz,
    bool? isGenerateQuizSupported,
    DateTime? createdAt,
    DateTime? updatedAt,
    BookReactionEntity? reactions,
    List<FlashcardCardEntity>? cards,
    List<String>? rewards,
  }) {
    return FlashcardEntity(
      flashcardId: flashcardId ?? this.flashcardId,
      title: title ?? this.title,
      summary: summary ?? this.summary,
      category: category ?? this.category,
      grades: grades ?? this.grades,
      totalCards: totalCards ?? this.totalCards,
      totalQuiz: totalQuiz ?? this.totalQuiz,
      reads: reads ?? this.reads,
      isHaveQuiz: isHaveQuiz ?? this.isHaveQuiz,
      isGenerateQuizSupported: isGenerateQuizSupported ?? this.isGenerateQuizSupported,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      reactions: reactions ?? this.reactions,
      cards: cards ?? this.cards,
      rewards: rewards ?? this.rewards,
    );
  }
}
