import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rameshclothhouse/gen/assets.gen.dart';
import 'package:rameshclothhouse/presentation/Providers/menu_items.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';

class AppDrawer extends StatelessWidget {
  final List<String> menuItems;
  final String? selectedItem;

  const AppDrawer({Key? key, required this.menuItems, this.selectedItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final menuItems = Provider.of<MenuItems>(context);
    // menuItems.addMenuItems(this.menuItems);
    return ChangeNotifierProvider(
      create: (context) => MenuItems(menuItems, selectedItem: selectedItem),
      child: const MenuDrawer(),
    );
  }
}

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuItems = Provider.of<MenuItems>(context);
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
              return SideDrawerMenuItem(
                title: item ?? '',
              );
            },
          ),
        ],
      ),
    );
  }
}

class SideDrawerMenuItem extends StatelessWidget {
  final String title;
  const SideDrawerMenuItem({
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
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: LatoTextView(
              label: title,
              fontSize:
                  Theme.of(context).appBarTheme.toolbarTextStyle?.fontSize,
              fontType: FontType.BOLD,
              color: menuItems.isSelectedItem(title)
                  ? CommonColors.navBarSelectedColor
                  : Theme.of(context).appBarTheme.toolbarTextStyle?.color,
            ),
          ),
          divider(width: screenWidth(context))
        ],
      ),
    );
  }
}
