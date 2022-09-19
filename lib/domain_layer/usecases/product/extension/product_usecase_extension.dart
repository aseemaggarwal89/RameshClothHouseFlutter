import '../../../domain_layer.dart';
export '../cases/get_product_usecase.dart';

abstract class ProductUseCaseInjection {}

extension ProductUseCaseInjectionExtension on ProductUseCaseInjection {
  ProductsUseCase get getProductDataUseCase {
    return injector<ProductsUseCase>();
  }
}
