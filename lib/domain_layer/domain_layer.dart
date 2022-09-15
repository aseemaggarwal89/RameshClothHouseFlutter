import 'package:get_it/get_it.dart';
import 'package:rameshclothhouse/domain_layer/repositories/product_repository.dart';
import 'package:rameshclothhouse/domain_layer/repositories/user_repository.dart';

import '../data_layer/data_layer.dart';
import 'app_configuration.dart';
import 'usecases/product/cases/get_product_usecase.dart';
import 'usecases/user/cases/user_case.dart';

export 'networkService/app_api_repository.dart';
export 'utils/utils.dart';
export 'app_configuration.dart';
export 'repositories/authentication_api_repository.dart';
export 'repositories/product_repository.dart';
export 'models/entities.dart';
export 'repositories/user_repository.dart';
export '../data_layer/data_source/models/data_source.dart';

export 'usecases/product/extension/product_usecase_extension.dart';
export 'usecases/user/extension/user_case_extension.dart';
export '../../../locator.dart';

class DomainLayer {
  static Future<void> initializeDependencies(
      Environment environment, GetIt injector) async {
    injector.registerSingleton<AppConfiguration>(
        AppConfiguration(appEnv: environment));
    await DataLayer.initializeDataLayerDependencies(injector);

    injector.registerSingleton<IProductUseCases>(
        ProductsUseCase(injector<IProductAPIRepository>()));

    // injector
    //     .registerSingleton<IUserUseCases>(UserUseCase(injector(), injector()));
  }
}

abstract class CacheInjection {}

// extension CacheInjectionExtension on CacheInjection {
//   FeedDataCache get feedDataCache {
//     return injector<FeedDataCache>();
//   }
// }
