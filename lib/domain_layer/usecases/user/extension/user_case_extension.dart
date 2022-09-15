import 'package:rameshclothhouse/domain_layer/usecases/product/cases/get_product_usecase.dart';
import 'package:rameshclothhouse/domain_layer/usecases/user/cases/user_case.dart';
import '../../../domain_layer.dart';
export '../cases/user_case.dart';

abstract class UserUseCaseInjection {}

extension UserUseCaseInjectionExtension on UserUseCaseInjection {
  UserUseCase get getUserDataUseCase {
    return injector<UserUseCase>();
  }
}
