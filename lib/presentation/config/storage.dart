import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:rameshclothhouse/domain_layer/domain_layer.dart';

class Storage {
  static final Storage _instance = Storage._internal();
  factory Storage() => _instance;
  Storage._internal();
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();
  final String _userKey = 'LoginUserId';
  final String _userPasswordKey = 'LoginUserPassword';
  void saveUser(LoginUserDTO user) {
    _secureStorage.write(key: _userKey, value: user.email);
    _secureStorage.write(key: _userPasswordKey, value: user.password);
  }

  Future<LoginUserDTO?> get loginUserId async {
    String? email = await _secureStorage.read(key: _userKey);
    if (email != null) {
      String? password = await _secureStorage.read(key: _userPasswordKey);
      if (password != null) {
        return LoginUserDTO(password: password, email: email);
      }
    }
    return null;
  }
}
