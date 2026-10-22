import 'package:epic_story_app/data/datasources/locals/collection_local_data_source.dart';
import 'package:epic_story_app/data/datasources/remotes/collection_remote_data_source.dart';
import 'package:epic_story_app/data/repository_impl/collection_repository_impl.dart';
import 'package:epic_story_app/domain/repositories/collection_repository.dart';
import 'package:epic_story_app/domain/usecases/collection_usecase.dart';
import 'package:get/get.dart';

class CollectionModule {
  CollectionModule() {
    Get.lazyPut<CollectionRemoteDataSource>(() => CollectionRemoteDataSource());
    Get.lazyPut<CollectionLocalDataSource>(() => CollectionLocalDataSource());
    Get.lazyPut<CollectionRepository>(
      () => CollectionRepositoryImpl(
        remoteDataSource: Get.find<CollectionRemoteDataSource>(),
        localDataSource: Get.find<CollectionLocalDataSource>(),
      ),
    );
    Get.lazyPut<CollectionUsecase>(
      () => CollectionUsecase(repository: Get.find<CollectionRepository>()),
    );
  }
}
