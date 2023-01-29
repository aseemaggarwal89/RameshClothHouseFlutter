import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rameshclothhouse/presentation/components/appNavBar/app_menu_view_model.dart';
import 'package:rameshclothhouse/presentation/components/app_controller.dart';
import 'package:rameshclothhouse/presentation/components/appNavBar/menu_drawer.dart';
import 'package:rameshclothhouse/presentation/components/responsive.dart';
import 'package:rameshclothhouse/presentation/components/text_button_view.dart';
import 'package:rameshclothhouse/presentation/config/app_router.dart';
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
      builder: ((builderContext, child) => AppView(child: child!)),
      routerDelegate: _appRouter.delegate(
        navigatorObservers: () => [AutoRouteObserver()],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
      locale: context.locale,
      // scrollBehavior: const ConstantScrollBehavior(),
    );
  }
}

class AppView extends StatefulWidget {
  final Widget child;

  AppView({super.key, required this.child});

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppMenuItems(selectedItem: MenuItemType.home),
      child: Controller(
          drawer: Responsive.isMobile(context) ? const AppDrawer() : null,
          child: widget.child),
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
