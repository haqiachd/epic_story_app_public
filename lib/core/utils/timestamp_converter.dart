import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/core/utils/epic_log.dart';

class TimestampConverter {
  static Timestamp? fromMap(dynamic time) {
    if (time == null) {
      EpicLog.info("Invalid input for Timestamp conversion (null).");
      return null;
    }

    // Kalau sudah dalam bentuk Timestamp, langsung return
    if (time is Timestamp) {
      return time;
    }

    // Kalau json bukan Map atau kosong, log dan return null
    if (time is! Map<String, dynamic> || time.isEmpty) {
      EpicLog.info("Invalid input for Timestamp conversion ($time). Expected a non-empty Map.");
      return null;
    }

    try {
      int seconds = time['_seconds'];
      int nanoseconds = time['_nanoseconds'];
      return Timestamp(seconds, nanoseconds);
    } catch (e) {
      EpicLog.info("Error parsing timestamp from map: $e");
      return null;
    }
  }


  // Method untuk konversi dari Timestamp ke Map
  static Map<String, dynamic> toMap(Timestamp timestamp) {
    return {
      '_seconds': timestamp.seconds,
      '_nanoseconds': timestamp.nanoseconds,
    };
  }

  // Method untuk konversi dari Timestamp ke DateTime
  static DateTime toDateTime(Timestamp? timestamp) {
    if (timestamp == null) return DateTime.now();
    return DateTime.fromMillisecondsSinceEpoch(timestamp.seconds * 1000);
  }

  // Method untuk konversi dari DateTime ke Timestamp
  static Timestamp? fromDateTime(DateTime? dateTime) {
    if (dateTime == null) return null;
    int seconds = dateTime.millisecondsSinceEpoch ~/ 1000;
    return Timestamp(seconds, 0);
  }
}