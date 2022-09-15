import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/config/theme.dart';
import 'package:rameshclothhouse/presentation/features/routes.gr.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Ramesh Cloth House",
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.currentTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      routerDelegate: _appRouter.delegate(
        navigatorObservers: () => [AutoRouteObserver()],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
      locale: context.locale,
      builder: (context, child) => child!,
      // scrollBehavior: const ConstantScrollBehavior(),
    );
  }
}

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const SplashPage());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
