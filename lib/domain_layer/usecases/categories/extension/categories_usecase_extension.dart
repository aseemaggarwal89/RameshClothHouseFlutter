import 'package:rameshclothhouse/domain_layer/usecases/categories/cases/get_category_usecase.dart';

import '../../../domain_layer.dart';
export '../cases/get_category_usecase.dart';

abstract class CategoryUseCaseInjection {}

extension CategoriesUseCaseInjectionExtension on CategoryUseCaseInjection {
  ICategoryUseCases get getCategoryDataUseCase {
    return injector<ICategoryUseCases>();
  }
}
