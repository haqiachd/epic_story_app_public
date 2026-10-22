import 'package:epic_story_app/data/datasources/locals/flashcard_local_datasource.dart';
import 'package:epic_story_app/data/datasources/remotes/flashcard_remote_datasource.dart';
import 'package:epic_story_app/data/repository_impl/flashcard_repository_impl.dart';
import 'package:epic_story_app/domain/repositories/flashcard_repository.dart';
import 'package:epic_story_app/domain/usecases/flashcard_usecase.dart';
import 'package:get/get.dart';

class FlashCardModule {
  FlashCardModule() {
    Get.lazyPut<FlashCardRemoteDatasource>(() => FlashCardRemoteDatasource());
    Get.lazyPut<FlashCardLocalDatasource>(() => FlashCardLocalDatasource());
    Get.lazyPut<FlashCardRepository>(
      () => FlashCardRepositoryImpl(
        remoteDatasource: Get.find<FlashCardRemoteDatasource>(),
        localDatasource: Get.find<FlashCardLocalDatasource>(),
      ),
    );
    Get.lazyPut<FlashCardUsecase>(
      () => FlashCardUsecase(Get.find<FlashCardRepository>()),
    );
  }
}
