import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import 'package:rameshclothhouse/presentation/components/top_nav_bar.dart';

import '../config/constants.dart';

class DesktopAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Widget? child;
  final String? titleIcon;

  const DesktopAppBar({
    Key? key,
    required this.title,
    this.child,
    this.titleIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(
          screenWidth(context), AppConstants.desktopNavbarHeight.toDouble()),
      child: child ?? TopNavBar(menuItems: [title]),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(AppConstants.desktopNavbarHeight.toDouble());
}
