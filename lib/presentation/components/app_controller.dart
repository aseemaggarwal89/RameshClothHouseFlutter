import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/components/appNavBar/desktop_nar_bar.dart';
import 'package:rameshclothhouse/presentation/components/appNavBar/mobile_nav_bar.dart';
import 'package:rameshclothhouse/presentation/components/responsive.dart';
import 'package:rameshclothhouse/presentation/components/text_button_view.dart';

import '../config/app_router.dart';

class Controller extends StatelessWidget {
  final Widget child;
  final Widget? drawer;
  final Color? backgroundColor;
  final MobileNavBar mobileNavBar = const MobileNavBar();
  final DesktopAppBar desktopNavBar = DesktopAppBar();

  Controller({
    required this.child,
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
  }) : super(key: key);

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
