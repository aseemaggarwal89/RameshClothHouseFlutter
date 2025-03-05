import 'package:formz/formz.dart';
import 'package:email_validator/email_validator.dart';

enum UsernameValidationError { empty, invalidEmail }

extension UsernameValidationErrorMessage on UsernameValidationError {
  String errorMessage() {
    switch (this) {
      case UsernameValidationError.empty:
        return "Please enter email";
      case UsernameValidationError.invalidEmail:
        return "Please enter a valid email address";
    }
  }
}

class Username extends FormzInput<String, UsernameValidationError> {
  const Username.pure() : super.pure('');
  const Username.dirty({String value = ''}) : super.dirty(value);

  @override
  UsernameValidationError? validator(String? value) {
    if (value?.isEmpty ?? false) {
      return UsernameValidationError.empty;
    }

    if (!EmailValidator.validate((value!))) {
      return UsernameValidationError.invalidEmail;
    }

    return null;
  }
}

enum PasswordValidationError { empty, tooshort, notStrong }

extension PasswordValidationErrorErrorMessage on PasswordValidationError {
  String errorMessage() {
    switch (this) {
      case PasswordValidationError.empty:
        return "Please enter password";
      case PasswordValidationError.tooshort:
        return "Password is too short, please atleast 8 character";
      case PasswordValidationError.notStrong:
        return "Your password is not strong, please use character and digit";
    }
  }
}

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty({String value = ''}) : super.dirty(value);

  @override
  PasswordValidationError? validator(String? value) {
    return value?.isNotEmpty == true ? null : PasswordValidationError.empty;
  }

  // void _checkPassword(String value) {
  //   RegExp numReg = RegExp(r".*[0-9].*");
  //   RegExp letterReg = RegExp(r".*[A-Za-z].*");

  //   String password = value.trim();
  //   double _strength = 0;
  //   String _displayText = 'Please enter a password';

  //   if (password.isEmpty) {
  //     _strength = 0;
  //     _displayText = 'Please enter you password';
  //   } else if (password.length < 8) {
  //     _strength = 1 / 4;
  //     _displayText = 'Your password is too short';
  //   } else if (password.length < 8) {
  //     _strength = 2 / 4;
  //     _displayText = 'Your password is acceptable but not strong';
  //   } else {
  //     if (!letterReg.hasMatch(password) || !numReg.hasMatch(password)) {
  //       // Password length >= 8
  //       // But doesn't contain both letter and digit characters
  //       _strength = 3 / 4;
  //       _displayText = 'Your password is strong';
  //     } else {
  //       // Password length >= 8
  //       // Password contains both letter and digit characters
  //       _strength = 1;
  //       _displayText = 'Your password is great';
  //     }
  //   }
  // }
}

enum AuthMode { Signup, Login }
