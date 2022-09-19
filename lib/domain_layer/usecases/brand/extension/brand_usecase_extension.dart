import '../../../domain_layer.dart';
export '../cases/get_brand_usecase.dart';

abstract class BrandUseCaseInjection {}

extension BrandUseCaseInjectionExtension on BrandUseCaseInjection {
  BrandsUseCase get getBrandDataUseCase {
    return injector<BrandsUseCase>();
  }
}
