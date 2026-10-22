import 'package:epic_story_app/domain/repositories/quiz_repository.dart';

class QuizUsecase {
  final QuizRepository repository;

  QuizUsecase({required this.repository});

  Future<String?> generate({required String prompt}) {
    return repository.generate(prompt: prompt);
  }
}
