import 'package:flutter/material.dart';

class AppLanguage {
  static const languagePath = 'assets/translations';

  static const supportedLocale = [
    Locale('en'),
    // Locale('hi'),
    // Locale('bn'),
    // Locale('gu'),
    // Locale('mr'),
    // Locale('ml'),
    // Locale('ka'),
    // Locale('te'),
    // Locale('ta'),
  ];

  static Locale get defaultLocale => const Locale('en');
}
