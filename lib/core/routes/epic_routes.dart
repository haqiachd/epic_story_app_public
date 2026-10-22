import 'package:epic_story_app/feature/ai_tutors/presentation/ai_tutor_binding.dart';
import 'package:epic_story_app/feature/ai_tutors/presentation/ai_tutor_page.dart';
import 'package:epic_story_app/feature/auth/choose_class/choose_class_binding.dart';
import 'package:epic_story_app/feature/auth/choose_class/choose_class_page.dart';
import 'package:epic_story_app/feature/auth/choose_date_birth/choose_date_birth_binding.dart';
import 'package:epic_story_app/feature/auth/choose_date_birth/choose_date_birth_page.dart';
import 'package:epic_story_app/feature/auth/choose_gender/choose_gender_binding.dart';
import 'package:epic_story_app/feature/auth/choose_gender/choose_gender_page.dart';
import 'package:epic_story_app/feature/books/presentation/book_histories/book_histories_binding.dart';
import 'package:epic_story_app/feature/books/presentation/book_histories/book_histories_page.dart';
import 'package:epic_story_app/feature/books/presentation/book_home/book_home_binding.dart';
import 'package:epic_story_app/feature/books/presentation/book_home/book_home_page.dart';
import 'package:epic_story_app/feature/books/presentation/book_quiz/book_quiz_binding.dart';
import 'package:epic_story_app/feature/books/presentation/book_quiz/book_quiz_page.dart';
import 'package:epic_story_app/feature/books/presentation/book_read/book_read_binding.dart';
import 'package:epic_story_app/feature/books/presentation/book_read/book_read_page.dart';
import 'package:epic_story_app/feature/books/presentation/book_reward/book_reward_binding.dart';
import 'package:epic_story_app/feature/books/presentation/book_reward/book_reward_page.dart';
import 'package:epic_story_app/feature/favorites/presentation/create_collection/create_collection_binding.dart';
import 'package:epic_story_app/feature/favorites/presentation/create_collection/create_collection_page.dart';
import 'package:epic_story_app/feature/favorites/presentation/detail_collection/detail_collection_binding.dart';
import 'package:epic_story_app/feature/favorites/presentation/detail_collection/detail_collection_page.dart';
import 'package:epic_story_app/feature/favorites/presentation/detail_collection_flashcard/detail_collection_flashcard_binding.dart';
import 'package:epic_story_app/feature/favorites/presentation/detail_collection_flashcard/detail_collection_flashcard_home.dart';
import 'package:epic_story_app/feature/favorites/presentation/favorite_home/favorite_home_binding.dart';
import 'package:epic_story_app/feature/favorites/presentation/favorite_home/favorite_home_page.dart';
import 'package:epic_story_app/feature/flashcards/flashcard_histories/flashcard_histories_binding.dart';
import 'package:epic_story_app/feature/flashcards/flashcard_histories/flashcard_histories_page.dart';
import 'package:epic_story_app/feature/flashcards/flashcard_home/flashcard_home_binding.dart';
import 'package:epic_story_app/feature/flashcards/flashcard_home/flashcard_home_page.dart';
import 'package:epic_story_app/feature/flashcards/flashcard_read/flashcard_read_binding.dart' show FlashCardReadBinding;
import 'package:epic_story_app/feature/flashcards/flashcard_read/flashcard_read_page.dart';
import 'package:epic_story_app/feature/flashcards/flashcard_result/flashcard_result_binding.dart';
import 'package:epic_story_app/feature/flashcards/flashcard_result/flashcard_result_page.dart';
import 'package:epic_story_app/feature/flashcards/flashcard_reward/flashcard_reward_binding.dart';
import 'package:epic_story_app/feature/flashcards/flashcard_reward/flashcard_reward_page.dart';
import 'package:epic_story_app/feature/profiles/presentation/profile_binding.dart';
import 'package:epic_story_app/feature/profiles/presentation/profile_page.dart';
import 'package:epic_story_app/feature/quizes/multiple_choices/multiple_choice_binding.dart';
import 'package:epic_story_app/feature/quizes/multiple_choices/multiple_choice_page.dart';
import 'package:epic_story_app/feature/rewards/reward_home/reward_home_binding.dart';
import 'package:epic_story_app/feature/rewards/reward_home/reward_home_page.dart';
import 'package:epic_story_app/feature/utils/navigation/epic_navigation_binding.dart';
import 'package:epic_story_app/feature/utils/navigation/epic_navigation_page.dart';
import 'package:epic_story_app/feature/utils/read_pdf_test/read_pdf_test_binding.dart';
import 'package:epic_story_app/feature/utils/read_pdf_test/read_pdf_test_page.dart';
import 'package:epic_story_app/feature/utils/splash_screen/splash_screen_binding.dart';
import 'package:epic_story_app/feature/utils/splash_screen/splash_screen_page.dart';
import 'package:epic_story_app/feature/utils/test_tts/test_tts_binding.dart';
import 'package:epic_story_app/feature/utils/test_tts/tets_tts_page.dart';
import 'package:epic_story_app/feature/utils/welcome/welcome_binding.dart';
import 'package:epic_story_app/feature/utils/welcome/welcome_page.dart';
import 'package:get/get.dart';

class EpicRoutes{
  static const initialRoute = splashScreen;
  // Utils
  static const splashScreen = '/slash_screen';
  static const welcome = '/welcome';
  static const navigation = '/epic_navigation';
  // Nav Home
  static const homeBook = '/book_home';
  static const homeFlashCard = '/flashcard_home';
  static const homeFavorite = '/fav_home';
  static const homeAiTutor = '/ai_tutor_home';
  static const homeProfile = '/profile_home';
  // Auth
  static const chooseGender = '/choose_gender';
  static const chooseClass = '/choose_class';
  static const chooseDateBirth = '/choose_date_birth';
  // collection
  static const createCollection = '/create_collection';
  static const detailCollection = '/detail_collection';

  // quizes
  static const multipleChoiceQuiz = '/multiple_choice_quiz';

  // Test
  static const animDemo = '/anim_demo';
  static const testTTS = '/tts';
  static const testRead = '/test_read';

  static const bookRead = '/book_read';
  static const bookQuiz = '/book_quiz';
  static const bookReward = '/book_reward';
  static const flashCardRead = '/flashcard_read';
  static const flashCardResult = '/flashcard_result';
  static const detailCollectionFlashcard = '/detail_collection_flashcard';
  static const flashcardReward = '/flashcard_reward';
  static const rewardHome = '/reward_home';
  static const flashcardHistories = '/flashcard_histories';
  static const bookHistories = '/book_histories';

  static final routes = <GetPage>[
    // Test
    // Utils
    GetPage(
      name: splashScreen,
      page: () => const SplashScreenPage(),
      binding: SplashScreenBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: welcome,
      page: () => const WelcomePage(),
      binding: WelcomeBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: navigation,
      page: () => const EpicNavigationPage(),
      binding: EpicNavigationBinding(),
      transition: Transition.downToUp,
    ),

    // Nav
    GetPage(
      name: homeBook,
      page: () => const BookHomePage(),
      binding: BookHomeBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: homeFavorite,
      page: () => const FavoriteHomePage(),
      binding: FavoriteHomeBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: homeAiTutor,
      page: () => const AiTutorPage(),
      binding: AiTutorBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: homeProfile,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
      transition: Transition.downToUp,
    ),

    // Auth
    GetPage(
      name: chooseGender,
      page: () => const ChooseGenderPage(),
      binding: ChooseGenderBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: chooseClass,
      page: () => const ChooseClassPage(),
      binding: ChooseClassBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: chooseDateBirth,
      page: () => const ChooseDateBirthPage(),
      binding: ChooseDateBirthBinding(),
      transition: Transition.noTransition,
    ),

    GetPage(
      name: testTTS,
      page: () =>  TetsTtsPage(),
      binding: TestTtsBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: testRead,
      page: () =>  ReadPdfTestPage(),
      binding: ReadPdfTestBinding(),
      transition: Transition.noTransition,
    ),

    GetPage(
      name: createCollection,
      page: () => const CreateCollectionPage(),
      binding: CreateCollectionBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: detailCollection,
      page: () => const DetailCollectionPage(),
      binding: DetailCollectionBinding(),
      transition: Transition.noTransition,
    ),

    GetPage(
      name: bookRead,
      page: () => const BookReadPage(),
      binding: BookReadBinding(),
      transition: Transition.noTransition,
    ),
    
    GetPage(
      name: multipleChoiceQuiz,
      page: () => MultipleChoicePage(), // Replace with actual Multiple Choice Quiz Page
      binding: MultipleChoiceBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: homeFlashCard,
      page: () => const FlashCardHomePage(),
      binding: FlashCardHomeBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: flashCardRead,
      page: () => const FlashCardReadPage(),
      binding: FlashCardReadBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: flashCardResult,
      binding: FlashCardResultBinding(),
      page: () => const FlashCardResultPage(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: detailCollectionFlashcard,
      page: () => const DetailCollectionFlashcardHome(),
      binding: DetailCollectionFlashcardBidings(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: flashcardReward,
      page: () => const FlashcardRewardPage(),
      binding: FlashcardRewardBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: rewardHome,
      page: () => const RewardHomePage(),
      binding: RewardHomeBinding(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: bookQuiz,
      page: () => const BookQuizPage(),
      binding: BookQuizBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: bookReward,
      page: () => const BookRewardPage(),
      binding: BookRewardBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: flashcardHistories,
      page: () => const FlashcardHistoriesPage(),
      binding: FlashcardHistoriesBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: bookHistories,
      page: () => const BookHistoriesPage(),
      binding: BookHistoriesBinding(),
      transition: Transition.noTransition,
    ),
  ];
}