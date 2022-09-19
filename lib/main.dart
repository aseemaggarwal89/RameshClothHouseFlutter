import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:rameshclothhouse/domain_layer/domain_layer.dart';
import 'package:rameshclothhouse/presentation/Providers/menu_items.dart';
import 'package:rameshclothhouse/presentation/bloc/authentication_bloc/authentication_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/core/language/app_language.dart';
import 'presentation/features/app/app.dart';

class SimpleBlocDelegate extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    print(event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    print(error);
  }
}

void main() {
  commonMain(Environment.Dev);
}

final getIt = GetIt.instance;

void commonMain(Environment env) async {
  await EasyLocalization.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  await DomainLayer.initializeDependencies(env, getIt);
  EasyLocalization.logger.enableBuildModes = [];
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  Bloc.observer = SimpleBlocDelegate();
  runApp(
    BlocProvider<AuthenticationBloc>(
        create: (context) => AuthenticationBloc()..add(AppStarted()),
        child: MultiProvider(
            providers: [
              RepositoryProvider<IProductUseCases>(
                create: (context) => injector(),
              ),
              RepositoryProvider<IUserUseCases>(
                create: (context) => injector(),
              ),
            ],
            child: EasyLocalization(
              supportedLocales: AppLanguage.supportedLocale,
              path: AppLanguage.languagePath,
              fallbackLocale: AppLanguage.defaultLocale,
              startLocale: AppLanguage.defaultLocale,
              child: App(),
            ))

        // MultiRepositoryProvider(
        //   providers: [
        // RepositoryProvider<IProductUseCases>(
        //   create: (context) => injector(),
        // ),
        // RepositoryProvider<IUserUseCases>(
        //   create: (context) => injector(),
        // ),
        //   ],
        //   child: EasyLocalization(
        //     supportedLocales: AppLanguage.supportedLocale,
        //     path: AppLanguage.languagePath,
        //     fallbackLocale: AppLanguage.defaultLocale,
        //     startLocale: AppLanguage.defaultLocale,
        //     child: App(),
        //   ),
        // ),
        ),
  );
}
