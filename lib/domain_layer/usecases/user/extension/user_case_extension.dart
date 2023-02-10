import '../../../domain_layer.dart';
export '../cases/user_case.dart';

abstract class UserUseCaseInjection {}

extension UserUseCaseInjectionExtension on UserUseCaseInjection {
  UserUseCase get getUserDataUseCase {
    return injector<UserUseCase>();
  }
}
