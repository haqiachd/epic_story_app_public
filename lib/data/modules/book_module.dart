
import 'package:epic_story_app/data/datasources/locals/book_local_data_source.dart';
import 'package:epic_story_app/data/datasources/remotes/book_remote_data_source.dart';
import 'package:epic_story_app/data/repository_impl/book_repository_impl.dart';
import 'package:epic_story_app/domain/repositories/book_repository.dart';
import 'package:epic_story_app/domain/usecases/book_usecase.dart';
import 'package:get/get.dart';

class BookModule{
  BookModule(){
    Get.lazyPut<BookRemoteDataSource>(() => BookRemoteDataSource());
    Get.lazyPut<BookLocalDataSource>(() => BookLocalDataSource());
    Get.lazyPut<BookRepository>(
          () => BookRepositoryImpl(
        remoteDataSource: Get.find<BookRemoteDataSource>(),
        localDataSource: Get.find<BookLocalDataSource>(),
      ),
    );
    Get.lazyPut<BookUsecase>(
          () => BookUsecase(Get.find<BookRepository>()),
    );
  }
}