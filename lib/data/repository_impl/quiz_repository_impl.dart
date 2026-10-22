import 'package:epic_story_app/data/datasources/locals/quiz_local_data_source.dart';
import 'package:epic_story_app/data/datasources/remotes/quiz_remote_data_source.dart';
import 'package:epic_story_app/domain/repositories/quiz_repository.dart';

class QuizRepositoryImpl implements QuizRepository {
  final QuizLocalDataSource localDataSource;
  final QuizRemoteDataSource remoteDataSource;

  QuizRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
  });
  
  @override
  Future<String?> generate({required String prompt}) async{
    return await remoteDataSource.generate(prompt: prompt);
  }
}
