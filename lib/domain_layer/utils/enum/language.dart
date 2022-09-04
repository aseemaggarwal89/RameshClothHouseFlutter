// ignore_for_file: constant_identifier_names

enum Language {
  ENGLISH,
  KANNADA,
  BANGLA,
  TAMIL,
  HINDI,
  GUJRATI,
  MALYALAM,
  TELUGU,
  MARATHI,

}


extension LanguageExtension on Language {
  static const names = {
    Language.ENGLISH: 'English',
    Language.HINDI: 'हिंदी',
    Language.TAMIL: 'தமிழ்',
    Language.MALYALAM: 'മലയാളം',
    Language.BANGLA: 'বাংলা',
    Language.KANNADA: 'ಕನ್ನಡ',
    Language.TELUGU: 'తెలుగు',
    Language.MARATHI: 'मराठी',
    Language.GUJRATI: 'ગુજરાતી',
  };
  }
