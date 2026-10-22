import 'package:epic_story_app/data/datasources/locals/children_local_data_source.dart';
import 'package:epic_story_app/data/datasources/remotes/children_remote_data_source.dart';
import 'package:epic_story_app/data/repository_impl/children_repository_impl.dart';
import 'package:epic_story_app/domain/repositories/children_repository.dart';
import 'package:epic_story_app/domain/usecases/children_usecase.dart';
import 'package:get/get.dart';

class ChildrenModule{
  ChildrenModule(){
    Get.lazyPut<ChildrenRemoteDataSource>(() => ChildrenRemoteDataSource());
    Get.lazyPut<ChildrenLocalDataSource>(() => ChildrenLocalDataSource());
    Get.lazyPut<ChildrenRepository>(
          () => ChildrenRepositoryImpl(
        childrenRemoteDataSource: Get.find<ChildrenRemoteDataSource>(),
        childrenLocalDataSource: Get.find<ChildrenLocalDataSource>(),
      ),
    );
    Get.lazyPut<ChildrenUsecase>(
          () => ChildrenUsecase(Get.find<ChildrenRepository>()),
    );
  }
}