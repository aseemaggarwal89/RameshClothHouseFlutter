import '../../../domain_layer.dart';
export '../cases/get_brand_usecase.dart';

abstract class BrandUseCaseInjection {}

extension BrandUseCaseInjectionExtension on BrandUseCaseInjection {
  IBrandUseCases get getBrandDataUseCase {
    return injector<IBrandUseCases>();
  }
}
