// ignore_for_file: constant_identifier_names

import 'utils/constants.dart';

enum Environment {
  Dev,
  Prod,
}

extension EnvironmentExtension on Environment {
  Map<AppURLsType, String> get appURLs {
    switch (this) {
      case Environment.Dev:
        return {
          AppURLsType.ugc: 'http://127.0.0.1:3000/api/v1/',
        };
      case Environment.Prod:
        return {};
    }
  }

  String get getEnv {
    switch (this) {
      case Environment.Dev:
        return "dev";
      case Environment.Prod:
        return "prod";
    }
  }
}

abstract class IAppConfiguration {
  late Environment env;
  Map<AppURLsType, String> get appURLs;
}

class AppConfiguration implements IAppConfiguration {
  @override
  late Environment env;

  AppConfiguration({required Environment appEnv}) {
    env = appEnv;
  }

  @override
  Map<AppURLsType, String> get appURLs => env.appURLs;
}
