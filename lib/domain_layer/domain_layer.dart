import 'package:get_it/get_it.dart';
import 'package:rameshclothhouse/domain_layer/Cache/home_data._cache.dart';
import 'package:rameshclothhouse/domain_layer/repositories/brand_repository.dart';
import 'package:rameshclothhouse/domain_layer/repositories/category_repository.dart';
import 'package:rameshclothhouse/domain_layer/repositories/product_repository.dart';
import 'package:rameshclothhouse/domain_layer/usecases/brand/cases/get_brand_usecase.dart';
import 'package:rameshclothhouse/domain_layer/usecases/categories/cases/get_category_usecase.dart';

import '../data_layer/data_layer.dart';
import 'app_configuration.dart';
import 'repositories/authentication_api_repository.dart';
import 'usecases/product/cases/get_product_usecase.dart';
import 'usecases/user/cases/user_case.dart';

export 'networkService/app_api_repository.dart';
export 'utils/utils.dart';
export 'app_configuration.dart';

export 'repositories/authentication_api_repository.dart';
export 'repositories/product_repository.dart';
export 'repositories/brand_repository.dart';
export 'repositories/category_repository.dart';

export 'models/entities.dart';
export 'models/categories_dto.dart';
export 'repositories/user_repository.dart';
export '../data_layer/data_source/models/data_source.dart';

export 'usecases/product/extension/product_usecase_extension.dart';
export 'usecases/brand/extension/brand_usecase_extension.dart';

export 'usecases/user/extension/user_case_extension.dart';
export '../../../locator.dart';

export './usecases/categories/extension/categories_usecase_extension.dart';
export './Cache/home_data._cache.dart';

class DomainLayer {
  static Future<void> initializeDependencies(
      Environment environment, GetIt injector) async {
    injector.registerSingleton<AppConfiguration>(
        AppConfiguration(appEnv: environment));
    await DataLayer.initializeDataLayerDependencies(injector);

    injector.registerSingleton(HomeDataCache());

    injector.registerSingleton<IProductUseCases>(
        ProductsUseCase(injector<IProductAPIRepository>()));
    injector.registerSingleton<IBrandUseCases>(
        BrandsUseCase(injector<IBrandAPIRepository>()));
    injector.registerSingleton<ICategoryUseCases>(
        CategoriesUseCase(injector<ICategoriesAPIRepository>()));

    injector.registerSingleton<UserUseCase>(
        UserUseCase(injector<IAuthenticationAPIRepository>()));
  }
}

abstract class CacheInjection {}

extension CacheInjectionExtension on CacheInjection {
  HomeDataCache get homeDataCache {
    return injector<HomeDataCache>();
  }
}
