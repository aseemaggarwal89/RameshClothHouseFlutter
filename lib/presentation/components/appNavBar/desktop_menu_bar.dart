// ignore_for_file: library_private_types_in_public_api, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rameshclothhouse/gen/assets.gen.dart';
import 'package:rameshclothhouse/presentation/components/appNavBar/app_menu_view_model.dart';
import 'package:rameshclothhouse/presentation/components/appNavBar/user_right_menu_bar.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';
import 'package:rameshclothhouse/presentation/config/app_router.dart';

import '../../config/constants.dart';

class DesktopMenuBar extends StatelessWidget {
  const DesktopMenuBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuItems = Provider.of<AppMenuItems>(context);
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).appBarTheme.backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).appBarTheme.shadowColor ??
                CommonColors.navBarShadowColor,
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      height: AppConstants.desktopNavbarHeight.toDouble(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Assets.images.rameshClothHouse.image(),
          ),
          const Spacer(),
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: menuItems.itemCount,
            itemBuilder: (ctx, i) {
              final item = menuItems.menuItem(i);
              return item != null
                  ? Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: DesktopMenuBarItem(
                          menuItemType: item,
                        ),
                      ),
                    )
                  : Container();
            },
          ),
          const Spacer(),
          const UserRightMenuBar(),
        ],
      ),
    );
  }
}

class DesktopMenuBarItem extends StatelessWidget {
  final MenuItemType menuItemType;
  const DesktopMenuBarItem({
    Key? key,
    required this.menuItemType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuItems = Provider.of<AppMenuItems>(context);

    return InkWell(
      onHover: (value) {
        menuItems.updateHoveringForMenu(menuItemType, value);
      },
      onTap: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: (() {
              menuItems.updateSelectedMenu(menuItemType, context);
            }),
            child: LatoTextView(
              label: menuItemType.title,
              fontSize:
                  Theme.of(context).appBarTheme.toolbarTextStyle?.fontSize,
              fontType: AppTextType.Medium,
              color: menuItems.isSelectedItem(menuItemType)
                  ? CommonColors.navBarSelectedColor
                  : Theme.of(context).appBarTheme.toolbarTextStyle?.color,
              // ? HomeScreenColor.navBarActiveTitleColor
              // : HomeScreenColor.navBarNormalTitleColor,
            ),
          ),
          const SizedBox(height: 5),
          Visibility(
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            visible: menuItems.isHovering(menuItemType),
            child: Container(
              height: 2,
              width: 30,
              color: HomeScreenColor.navBarHoverColor,
            ),
          )
        ],
      ),
    );
  }
}
