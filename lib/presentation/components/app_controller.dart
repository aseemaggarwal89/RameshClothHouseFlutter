import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rameshclothhouse/presentation/bloc/authentication_bloc/authentication_bloc.dart';
import 'package:rameshclothhouse/presentation/components/appNavBar/desktop_nar_bar.dart';
import 'package:rameshclothhouse/presentation/components/appNavBar/mobile_nav_bar.dart';
import 'package:rameshclothhouse/presentation/components/responsive.dart';


class Controller extends StatelessWidget {
  final Widget child;
  final Widget? drawer;
  final Color? backgroundColor;
  final MobileNavBar mobileNavBar = const MobileNavBar();
  final DesktopAppBar desktopNavBar = const DesktopAppBar();

  const Controller({
    required this.child,
    this.drawer,
    this.backgroundColor,
    Key? key,
  }) : super(key: key);

  const Controller.basic({
    required title,
    required this.child,
    this.drawer,
    this.backgroundColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget appBar;
    appBar = (Responsive.isMobile(context) ? mobileNavBar : desktopNavBar)
        as PreferredSizeWidget;

    final pageBody = SafeArea(
      child: child,
    );

    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return Scaffold(
          appBar: appBar,
          body: pageBody,
          drawer: drawer,
          backgroundColor: backgroundColor,
        );
      },
    );
  }
}
