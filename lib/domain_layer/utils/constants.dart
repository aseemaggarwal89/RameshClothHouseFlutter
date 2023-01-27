// ignore_for_file: constant_identifier_names

enum ReviewStatus { REVIEW, RATING }

enum AppURLsType { ugc }

extension EnumByName<T extends Enum> on Iterable<T> {
  T? getEnumType(String name) {
    for (var value in this) {
      if (value.name == name) return value;
    }

    return null;
  }
}

extension Range on num {
  bool isBetween(num from, num to) {
    return from < this && this < to;
  }
}
