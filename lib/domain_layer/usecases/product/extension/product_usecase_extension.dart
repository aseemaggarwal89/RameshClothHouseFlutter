import '../../../domain_layer.dart';
export '../cases/get_product_usecase.dart';

abstract class ProductUseCaseInjection {}

extension ProductUseCaseInjectionExtension on ProductUseCaseInjection {
  IProductUseCases get getProductDataUseCase {
    return injector<IProductUseCases>();
  }
}
