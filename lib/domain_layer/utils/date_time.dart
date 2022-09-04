class DatetimeUtils {
  static int getActualTime() {
    int difference = 0;
    // TODO: add logic to calculate difference

    return getTimeStamp() + difference;
  }

  static int getTimeStamp() {
    return DateTime.now().millisecondsSinceEpoch;
  }

  static bool timeInbetween(DateTime time, num startTime, num endTime) {
    final timeStamp = getTimeStamp();
    return startTime <= timeStamp && timeStamp < endTime;
  }
}
