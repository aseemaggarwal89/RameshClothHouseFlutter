import 'package:jiffy/jiffy.dart';

class DateTimeUtils {
  static int getActualTime() {
    int difference = 0;
    // TODO: add logic to calculate difference

    return getTimeStamp() + difference;
  }

  static int getTimeStamp() {
    return DateTime.now().millisecondsSinceEpoch;
  }

  static DateTime getCurrentTime() {
    final dateTime = DateTime.now();
    return DateTime(dateTime.year, dateTime.month, dateTime.day);
  }

  static bool timeInBetween(DateTime time, num startTime, num endTime) {
    final timeStamp = getTimeStamp();
    return startTime <= timeStamp && timeStamp < endTime;
  }

  static String formatDate({DateTime? dateTime, String formatDate = 'dd'}) {
    var date = dateTime ?? DateTime.now();
    return Jiffy.parseFromDateTime(date).format(pattern: formatDate);
  }

  static String referenceTime(int milliseconds) {
    return Jiffy.parseFromDateTime(DateTime.fromMillisecondsSinceEpoch(milliseconds)).fromNow();
  }

  static DateTime get findFirstDateOfTheWeek {
    final dateTime = getCurrentTime();
    return dateTime.subtract(Duration(days: dateTime.weekday - 1));
  }

  static DateTime get findLastDateOfTheWeek {
    final dateTime = getCurrentTime();
    return dateTime.add(Duration(days: DateTime.daysPerWeek - dateTime.weekday));
  }
}
