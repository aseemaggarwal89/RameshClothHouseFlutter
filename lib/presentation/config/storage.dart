import 'package:rameshclothhouse/domain_layer/domain_layer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:encrypt/encrypt.dart';

class Storage {
  String kSecureKey = 'CBoaDQIQAgceGg8dFAkMDBEOECEZCxgMBiAUFQwKFhg=';

  static final Storage _instance = Storage._internal();
  factory Storage() => _instance;
  Storage._internal();
  final String _userKey = 'LoginUserId';
  final String _userPasswordKey = 'LoginUserPassword';

  void saveUser(LoginUserDTO user) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userKey, user.email);
    String encryptValue = encryptPassword(user.password);
    await prefs.setString(_userPasswordKey, encryptValue);
  }

  void removeSavedUser() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(_userKey);
    prefs.remove(_userPasswordKey);
  }

  String encryptPassword(String value) {
    final key = Key.fromUtf8(kSecureKey);
    final iv = IV.fromLength(8);
    final encrypter = Encrypter(Salsa20(key));

    final encrypted = encrypter.encrypt(value, iv: iv);
    return encrypted.base64;
  }

  String decryptPassword(String value) {
    final key = Key.fromUtf8(kSecureKey);
    final iv = IV.fromLength(8);
    final encrypter = Encrypter(Salsa20(key));
    final decrypted = encrypter.decrypt64(value, iv: iv);
    return decrypted;
  }

  Future<LoginUserDTO?> get loginUserId async {
    final prefs = await SharedPreferences.getInstance();
    String? email = prefs.getString(_userKey);
    if (email != null) {
      String? password = prefs.getString(_userPasswordKey);
      if (password != null) {
        String decrypt = decryptPassword(password);
        return LoginUserDTO(password: decrypt, email: email);
      }
    }
    return null;
  }
}
