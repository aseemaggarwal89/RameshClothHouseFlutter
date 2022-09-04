import 'package:get_it/get_it.dart';
import 'package:rameshclothhouse/data_layer/data_source/remote/app_base_api_client.dart';
import 'package:rameshclothhouse/data_layer/networkLayer/appnetworking/networkClient/http_client.dart';

import '../domain_layer/domain_layer.dart';
import 'data_source/local/database.dart';

export 'networkLayer/appnetworking/api_contants.dart';

final injector = GetIt.instance;

class DataLayer {
  static Future<void> initializeDataLayerDependencies(GetIt injector) async {
    final database = await AppDatabase.databaseBuilder('healofy').build();
    injector.registerSingleton<IAppDatabase>(database);

    // injector.registerFactory<IHomeFeedDataAPIRepository>(
    //     () => HomeFeedDataAPIRepository(injector<INetworkService>()));
    // injector.registerFactory<IFeedNotificationDataAPIRepository>(
    //     () => FeedNotificationDataAPIRepository(injector<INetworkService>()));

    injector.registerSingleton<IAppHttpClient>(AppHttpClient());

    injector.registerLazySingleton<INetworkService>(() {
      return AppAPIClient(
          injector<IAppHttpClient>(), injector<AppConfiguration>().appURLs);
    });

    // injector.registerSingleton<FeedDataDataBaseRoom>(FeedDataDataBaseRoom());
    // injector.registerSingleton<ProfileDataBaseRoom>(ProfileDataBaseRoom());
    // injector.registerSingleton<FeedNotificationDataDataBaseRoom>(
    //     FeedNotificationDataDataBaseRoom());

    // injector.registerSingleton<IFeedDataDBRepository>(
    //     FeedDataDbRepository(injector<FeedDataDataBaseRoom>()));
    // injector.registerSingleton<IProfileDataDBRepository>(
    //     ProfileDataDbRepository(injector<ProfileDataBaseRoom>()));
    // injector.registerSingleton<IFeedNotificationDataDBRepository>(
    //     FeedNotificationDataDbRepository(
    //         injector<FeedNotificationDataDataBaseRoom>()));
    // injector.registerSingleton<FeedDatabaseRoom>(FeedDatabaseRoom());
    // injector.registerSingleton<LocalNotificationDataBaseRoom>(
    //     LocalNotificationDataBaseRoom());

    // injector.registerLazySingleton<ProfileRepository>(
    //     () => ProfileRepositoryImpl(injector()));

    // injector.registerLazySingleton<FollowerRepository>(
    //     () => FollowerRepositoryImpl(injector()));

    // injector.registerLazySingleton<EditProfileRepository>(
    //     () => EditProfileRepositoryImpl(injector()));

    // injector.registerLazySingleton<ValidateUsernameRepository>(
    //     () => ValidateUsernameRepositoryImpl(injector()));

    // injector.registerLazySingleton<ProductRepository>(
    //     () => ProductRepositoryImpl(injector()));

    // injector.registerLazySingleton<CartRepository>(
    //     () => CartRepositoryImpl(injector()));

    // injector.registerLazySingleton<AddressRepository>(
    //     () => AddressRepositoryImpl(injector()));

    // injector.registerLazySingleton<OrderRepository>(
    //     () => OrderRepositoryImpl(injector()));

    // injector.registerLazySingleton<MallRepository>(
    //     () => MallRepositoryImpl(injector()));

    // injector.registerLazySingleton<SearchRepository>(
    //     () => SearchRepositoryImpl(injector()));

    // injector.registerLazySingleton<UserContentRepository>(
    //     () => UserContentRepositoryImpl(injector()));

    // injector.registerLazySingleton<LocalNotificationRepository>(
    //     () => LocalNotificationRepositoryImpl(injector(), injector()));
    // injector.registerLazySingleton<IUploadCreateContentRepository>(
    //     () => UploadCreateContentRepository(injector()));
    // injector.registerLazySingleton<FeedRepository>(
    //     () => FeedRepositoryImpl(injector(), injector()));
  }
}
