import 'package:rameshclothhouse/domain_layer/usecases/product/cases/get_product_usecase.dart';
import '../../../domain_layer.dart';
export '../cases/get_product_usecase.dart';

abstract class ProductUseCaseInjection {}

extension ProductUseCaseInjectionExtension on ProductUseCaseInjection {
  ProductsUseCase get getHomeFeedDataUseCase {
    return injector<ProductsUseCase>();
  }
}
