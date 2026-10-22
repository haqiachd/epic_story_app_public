import 'package:epic_story_app/data/datasources/locals/flashcard_local_datasource.dart';
import 'package:epic_story_app/data/datasources/remotes/flashcard_remote_datasource.dart';
import 'package:epic_story_app/data/models/mappers/flashcards/flashcard_mapper.dart';
import 'package:epic_story_app/domain/entities/flashcards/flashcard_entity.dart';
import 'package:epic_story_app/domain/repositories/flashcard_repository.dart';

class FlashCardRepositoryImpl implements FlashCardRepository {
  final FlashCardRemoteDatasource remoteDatasource;
  final FlashCardLocalDatasource localDatasource;

  FlashCardRepositoryImpl({
    required this.remoteDatasource,
    required this.localDatasource,
  });

  @override
  Future<List<FlashcardEntity>> getFlashcards() async {
    final remotes = await remoteDatasource.getFlashcards();
    if (remotes.isNotEmpty) {
      await localDatasource.saveFlashcards(
        flashcards: FlashCardMapper.remoteListToLocalList(remotes),
        isClear: true,
      );
      final entities = FlashCardMapper.remoteListToEntityList(remotes);
      return entities;
    }
    return [];
  }

  @override
  Future<FlashcardEntity?> getFlashcardById({
    required String flashcardId,
  }) async {
    final remote = await remoteDatasource.getFlashcardById(
      flashcardId: flashcardId,
    );
    if (remote != null) {
      await localDatasource.saveFlashcard(
        flashcard: FlashCardMapper.remoteToLocal(remote),
      );
      return FlashCardMapper.remoteToEntity(remote);
    }
    return null;
  }
}
