import '../../../domain_layer.dart';
import '../cases/get_detail_usecase.dart';

abstract class GetDetailUseCaseInjection {}

extension GetDetailUseCaseInjectionExtension on GetDetailUseCaseInjection {
  IGetDetailUseCaseUseCases get getDetailDataUseCase {
    return injector<IGetDetailUseCaseUseCases>();
  }
}
