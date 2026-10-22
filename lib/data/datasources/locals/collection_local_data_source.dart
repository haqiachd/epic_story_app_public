import 'package:epic_story_app/core/services/isar_service.dart';
import 'package:get/get.dart';
import 'package:isar_community/isar.dart';

class CollectionLocalDataSource {
  final IsarService isarService = Get.find<IsarService>();
  Isar get isar => isarService.isar;
}
