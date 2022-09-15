import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/components/desktop_nar_bar.dart';
import 'package:rameshclothhouse/presentation/components/mobile_nav_bar.dart';
import 'package:rameshclothhouse/presentation/components/responsive.dart';

class Controller extends StatelessWidget {
  final Widget child;
  final ControllerAppBar mobileNavBar;
  final DesktopAppBar desktopNavBar;
  final Widget? drawer;
  final Color? backgroundColor;

  const Controller({
    required this.child,
    required this.mobileNavBar,
    required this.desktopNavBar,
    this.drawer,
    this.backgroundColor,
    Key? key,
  }) : super(key: key);

  Controller.basic({
    required title,
    required this.child,
    this.drawer,
    this.backgroundColor,
    Key? key,
  })  : mobileNavBar = ControllerAppBar(title: title),
        desktopNavBar = DesktopAppBar(title: title),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget appBar;
    appBar = (Responsive.isMobile(context) ? mobileNavBar : desktopNavBar)
        as PreferredSizeWidget;

    final pageBody = SafeArea(
      child: child,
    );

    return Scaffold(
      appBar: appBar,
      body: pageBody,
      drawer: drawer,
      backgroundColor: backgroundColor,
    );
  }
}
