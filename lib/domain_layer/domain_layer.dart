import 'package:get_it/get_it.dart';
import 'package:rameshclothhouse/domain_layer/repositories/api_repository.dart';
import 'package:rameshclothhouse/domain_layer/usecases/getAll/cases/get_all_usecase.dart';
import 'package:rameshclothhouse/domain_layer/usecases/getDetail/cases/get_detail_usecase.dart';

import '../data_layer/data_layer.dart';
import 'app_configuration.dart';
import 'repositories/authentication_api_repository.dart';
import 'usecases/user/cases/user_case.dart';

export 'networkService/app_api_repository.dart';
export 'utils/utils.dart';
export 'app_configuration.dart';

export 'repositories/authentication_api_repository.dart';
export 'repositories/product_repository.dart';

export 'models/entities.dart';
export 'models/categories_dto.dart';
export 'repositories/user_repository.dart';
export '../data_layer/data_source/models/data_source.dart';

export 'usecases/user/extension/user_case_extension.dart';
export '../../../locator.dart';
export 'usecases/getAll/extension/get_all_usecase_extension.dart';
export 'usecases/getDetail/extension/get_detail_usecase_extension.dart';

class DomainLayer {
  static Future<void> initializeDependencies(
      Environment environment, GetIt injector) async {
    injector.registerSingleton<AppConfiguration>(
        AppConfiguration(appEnv: environment));
    await DataLayer.initializeDataLayerDependencies(injector);

    injector.registerSingleton<UserUseCase>(
        UserUseCase(injector<IAuthenticationAPIRepository>()));

    injector.registerSingleton<IGetAllUseCaseUseCases>(
        GetAllUseCase(injector<INetworkAPIRepository>()));
    injector.registerSingleton<IGetDetailUseCaseUseCases>(
        GetDetailUseCaseUseCases(injector<INetworkAPIRepository>()));
  }
}