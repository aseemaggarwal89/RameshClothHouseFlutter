import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'lato_text_view.dart';

class ControllerAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final Widget? leadingWidget;
  final String? titleIcon;

  ControllerAppBar({
    Key? key,
    required this.title,
    this.leading,
    this.actions,
    this.backgroundColor = Colors.blueGrey,
    this.leadingWidget,
    this.titleIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      leading: leadingWidget,
      title: titleIcon != null
          ? SvgPicture.asset(titleIcon!)
          : LatoTextView(
              label: title,
              fontSize:
                  Theme.of(context).appBarTheme.toolbarTextStyle?.fontSize,
              fontType: FontType.BOLD,
              color: Theme.of(context).appBarTheme.toolbarTextStyle?.color,
            ),
      actions: actions,
      elevation: 1,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
