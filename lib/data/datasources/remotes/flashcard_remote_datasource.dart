import 'package:epic_story_app/core/services/firebase_service.dart';
import 'package:epic_story_app/core/utils/epic_log.dart';
import 'package:epic_story_app/data/models/remotes/flashcards/flashcard_remote_model.dart';
import 'package:get/get.dart';

class FlashCardRemoteDatasource {
  final FirebaseService fireService = Get.find<FirebaseService>();

  Future<List<FlashcardRemoteModel>> getFlashcards() async {
    try {
      final snapshot = await fireService.db.collection('flashcards').get();

      return snapshot.docs
          .map(
            (doc) =>
                FlashcardRemoteModel.fromJson(doc.data(), flashcardId: doc.id),
          )
          .toList();
    } catch (ex, s) {
      EpicLog.exception(ex, s, 'Error fetching flashcards: $ex');
      return [];
    }
  }

  Future<FlashcardRemoteModel?> getFlashcardById({
    required String flashcardId,
  }) async {
    try {
      final doc =
          await fireService.db.collection('flashcards').doc(flashcardId).get();
      if (doc.exists) {
        return FlashcardRemoteModel.fromJson(doc.data()!, flashcardId: doc.id);
      } else {
        EpicLog.error('Flashcard with ID $flashcardId not found');
        return null;
      }
    } catch (ex, s) {
      EpicLog.exception(ex, s, 'Error fetching flashcard by ID: $ex');
      return null;
    }
  }
}
