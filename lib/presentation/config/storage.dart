import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Storage {
  static final Storage _instance = Storage._internal();
  factory Storage() => _instance;
  Storage._internal();
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();
  final String _userKey = 'LoginUserId';

  void saveUserId(String userId) {
    _secureStorage.write(key: _userKey, value: userId);
  }

  Future<String?> get loginUserId async {
    return _secureStorage.read(key: _userKey);
  }
}
