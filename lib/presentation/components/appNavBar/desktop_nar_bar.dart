import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/components/appNavBar/desktop_menu_bar.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';

import '../../config/constants.dart';

class DesktopAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? child;
  final String? titleIcon;

  const DesktopAppBar({
    Key? key,
    this.titleIcon,
  })  : child = const DesktopMenuBar(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(
          screenWidth(context), AppConstants.desktopNavbarHeight.toDouble()),
      child: child ?? Container(),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(AppConstants.desktopNavbarHeight.toDouble());
}
