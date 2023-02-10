import 'package:get_it/get_it.dart';
import 'package:rameshclothhouse/data_layer/api_repository/api_repository.dart';
import 'package:rameshclothhouse/data_layer/api_repository/authentication_api_respository.dart';
import 'package:rameshclothhouse/data_layer/api_repository/product_api_respository.dart';
import 'package:rameshclothhouse/data_layer/data_repository/product_db_repository.dart';
import 'package:rameshclothhouse/data_layer/data_source/remote/app_base_api_client.dart';
import 'package:rameshclothhouse/data_layer/networkLayer/appnetworking/networkClient/http_client.dart';
import 'package:rameshclothhouse/domain_layer/repositories/api_repository.dart';

import '../domain_layer/domain_layer.dart';
import 'data_repository/user_db_repository.dart';
import 'data_source/local/database.dart';
export '../../../locator.dart';

export 'networkLayer/appnetworking/api_contants.dart';
export 'data_source/models/data_source.dart';

class DataLayer {
  static Future<void> initializeDataLayerDependencies(GetIt injector) async {
    // final database = await AppDatabase.databaseBuilder('healofy').build();
    // injector.registerSingleton<IAppDatabase>(database);

    injector.registerSingleton<IAppHttpClient>(AppHttpClient());
    injector.registerLazySingleton<INetworkService>(() {
      return AppAPIClient(injector(), injector<AppConfiguration>().appURLs);
    });

    // API
    injector.registerFactory<IAuthenticationAPIRepository>(
        () => AuthenticationAPIRepository(injector()));
    injector.registerFactory<INetworkAPIRepository>(
        () => NetworkAPIRepository(injector()));

    // Local Storage
    // injector.registerSingleton<UserDatabaseRoom>(UserDatabaseRoom());
    // injector.registerSingleton<ProductDataBaseRoom>(ProductDataBaseRoom());

    // injector.registerSingleton<IProductDataDBRepository>(
    //     ProductDataDbRepository(injector<ProductDataBaseRoom>()));
    // injector.registerSingleton<IUserDataDBRepository>(
    //     UserDataDbRepository(injector<UserDatabaseRoom>()));
  }
}
