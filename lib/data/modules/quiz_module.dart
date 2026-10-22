import 'package:epic_story_app/data/datasources/locals/quiz_local_data_source.dart';
import 'package:epic_story_app/data/datasources/remotes/quiz_remote_data_source.dart';
import 'package:epic_story_app/data/repository_impl/quiz_repository_impl.dart';
import 'package:epic_story_app/domain/repositories/quiz_repository.dart';
import 'package:epic_story_app/domain/usecases/quiz_usecase.dart';
import 'package:get/get.dart';

class QuizModule {
  QuizModule() {
    Get.lazyPut<QuizLocalDataSource>(() => QuizLocalDataSource());
    Get.lazyPut<QuizRemoteDataSource>(() => QuizRemoteDataSource());
    Get.lazyPut<QuizRepository>(
      () => QuizRepositoryImpl(
        remoteDataSource: Get.find<QuizRemoteDataSource>(),
        localDataSource: Get.find<QuizLocalDataSource>(),
      ),
    );
    Get.lazyPut<QuizUsecase>(
      () => QuizUsecase(repository: Get.find<QuizRepository>()),
    );
  } // todo
}
