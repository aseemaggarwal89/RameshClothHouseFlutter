import 'package:flutter/cupertino.dart';
import 'package:rameshclothhouse/presentation/config/app_router.dart';

class AppMenuItems extends ChangeNotifier {
  Map<MenuItemType, bool> _itemHoveringState = {};
  List<MenuItemType> _items;
  MenuItemType? _selectedItem;

  AppMenuItems._(this._itemHoveringState, this._selectedItem, this._items);

  factory AppMenuItems({
    MenuItemType? selectedItem,
    bool isAdmin = false,
  }) {
    Map<MenuItemType, bool> itemHoveringState = {};
    List<MenuItemType> menuItems = isAdmin
        ? MenuItemType.values
        : MenuItemTypeExtension.menuItemsForNonAdmin();

    for (var menuItem in menuItems) {
      itemHoveringState[menuItem] = false;
    }

    return AppMenuItems._(itemHoveringState, selectedItem, menuItems);
  }

  void updateMenuItems(bool isAdmin) {
    _items = isAdmin
        ? MenuItemType.values
        : MenuItemTypeExtension.menuItemsForNonAdmin();
    notifyListeners();
  }

  int get itemCount {
    return _items.length;
  }

  MenuItemType? get selectedMenuItem {
    return _selectedItem;
  }

  bool isHovering(MenuItemType menuItem) {
    return _itemHoveringState[menuItem] ?? false;
  }

  void updateSelectedMenu(MenuItemType menuItemType, BuildContext context) {
    _selectedItem = menuItemType;
    AppNavigator.navigateOnSelectedMenu(menuItemType);
    notifyListeners();
  }

  void unSelectedMenu() {
    _selectedItem = null;
    notifyListeners();
  }

  void updateHoveringForMenu(
    MenuItemType menuItem,
    bool isHovering,
  ) {
    if (_itemHoveringState[menuItem] != null) {
      _itemHoveringState[menuItem] = isHovering;
      notifyListeners();
    }
  }

  MenuItemType? menuItem(int index) {
    return _items.length > index ? _items[index] : null;
  }

  bool isSelectedItem(MenuItemType item) {
    return _selectedItem == item;
  }
}

enum MenuItemType { home, shop, about, contactUs, dashboard }

extension MenuItemTypeExtension on MenuItemType {
  static List<MenuItemType> menuItemsForNonAdmin() {
    return [
      MenuItemType.home,
      MenuItemType.shop,
      MenuItemType.about,
      MenuItemType.contactUs,
    ];
  }

  String get title {
    switch (this) {
      case MenuItemType.home:
        return "Home";
      case MenuItemType.shop:
        return "Shop";
      case MenuItemType.about:
        return "About";
      case MenuItemType.contactUs:
        return "Contact Us";
      case MenuItemType.dashboard:
        return "Dashboard";
    }
  }
}
