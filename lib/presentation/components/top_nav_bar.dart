// ignore_for_file: library_private_types_in_public_api, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rameshclothhouse/gen/assets.gen.dart';
import 'package:rameshclothhouse/presentation/Providers/menu_items.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';

import '../config/constants.dart';

class TopNavBar extends StatelessWidget {
  final List<String> menuItems;
  final String? selectedItem;

  const TopNavBar({
    Key? key,
    required this.menuItems,
    this.selectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final menuItems = Provider.of<MenuItems>(context);
    // menuItems.addMenuItems(this.menuItems);
    return ChangeNotifierProvider(
      create: (context) => MenuItems(menuItems, selectedItem: selectedItem),
      child: const TopNavBarContents(),
    );
  }
}

class TopNavBarContents extends StatelessWidget {
  const TopNavBarContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuItems = Provider.of<MenuItems>(context);
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
              return Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TopNavBarMenuItem(
                    title: item ?? '',
                  ),
                ),
              );
            },
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class TopNavBarMenuItem extends StatelessWidget {
  final String title;
  const TopNavBarMenuItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuItems = Provider.of<MenuItems>(context);

    return InkWell(
      onHover: (value) {
        menuItems.updateHoveringForMenu(title, value);
      },
      onTap: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LatoTextView(
            label: title,
            fontSize: Theme.of(context).appBarTheme.toolbarTextStyle?.fontSize,
            fontType: AppTextType.Medium,
            color: menuItems.isSelectedItem(title)
                ? CommonColors.navBarSelectedColor
                : Theme.of(context).appBarTheme.toolbarTextStyle?.color,
            // ? HomeScreenColor.navBarActiveTitleColor
            // : HomeScreenColor.navBarNormalTitleColor,
          ),
          const SizedBox(height: 5),
          Visibility(
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            visible: menuItems.isHovering(title),
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
