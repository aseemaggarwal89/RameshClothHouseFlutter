import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:rameshclothhouse/presentation/components/appNavBar/app_menu_view_model.dart';
import 'package:rameshclothhouse/presentation/components/appNavBar/user_right_menu_bar.dart';
import '../lato_text_view.dart';

class MobileNavBar extends StatelessWidget with PreferredSizeWidget {
  final Widget? leading;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final Widget? leadingWidget;
  final String? titleIcon;

  const MobileNavBar({
    Key? key,
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
      leading: leadingWidget ??
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
      title: titleIcon != null
          ? SvgPicture.asset(titleIcon!)
          : Row(
              children: [
                LatoTextView(
                  label: Provider.of<AppMenuItems>(context)
                          .selectedMenuItem
                          ?.title ??
                      "",
                  fontSize:
                      Theme.of(context).appBarTheme.toolbarTextStyle?.fontSize,
                  fontType: AppTextType.TitleMedium,
                  color: Theme.of(context).appBarTheme.toolbarTextStyle?.color,
                ),
                const Spacer(),
                const UserRightMenuBar(),
              ],
            ),
      actions: actions,
      elevation: 1,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
