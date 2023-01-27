enum Lang {
  english,
  hindi,
  tamil,
  malayalam,
  bangla,
  kannada,
  telugu,
  marathi,
  gujrati,
}

extension LanguageExtension on Lang {
  static const names = {
    Lang.english: 'English',
    Lang.hindi: 'हिंदी',
    Lang.tamil: 'தமிழ்',
    Lang.malayalam: 'മലയാളം',
    Lang.bangla: 'বাংলা',
    Lang.kannada: 'ಕನ್ನಡ',
    Lang.telugu: 'తెలుగు',
    Lang.marathi: 'मराठी',
    Lang.gujrati: 'ગુજરાતી',
  };

  String? get name => names[this];
}