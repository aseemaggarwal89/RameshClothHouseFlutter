import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rameshclothhouse/gen/assets.gen.dart';
import 'package:rameshclothhouse/presentation/components/appNavBar/app_menu_view_model.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MenuDrawer();
  }
}

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuItems = Provider.of<AppMenuItems>(context);
    return Drawer(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      child: Column(
        children: [
          verticalSpaceRegular,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Assets.images.rameshClothHouse
                .image(height: 80, fit: BoxFit.fill),
          ),
          verticalSpaceSmall,
          ListView.builder(
            shrinkWrap: true,
            itemCount: menuItems.itemCount,
            itemBuilder: (ctx, i) {
              final item = menuItems.menuItem(i);
              return item != null
                  ? SideDrawerMenuItem(
                      menuItemType: item,
                    )
                  : Container();
            },
          ),
        ],
      ),
    );
  }
}

class SideDrawerMenuItem extends StatelessWidget {
  final MenuItemType menuItemType;
  const SideDrawerMenuItem({
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
        mainAxisSize: MainAxisSize.max,
        children: [
          GestureDetector(
            onTap: (() {
              menuItems.updateSelectedMenu(menuItemType, context);
            }),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: LatoTextView(
                label: menuItemType.title,
                fontSize:
                    Theme.of(context).appBarTheme.toolbarTextStyle?.fontSize,
                fontType: AppTextType.TitleMedium,
                color: menuItems.isSelectedItem(menuItemType)
                    ? CommonColors.navBarSelectedColor
                    : Theme.of(context).appBarTheme.toolbarTextStyle?.color,
              ),
            ),
          ),
          divider(width: screenWidth(context))
        ],
      ),
    );
  }
}
