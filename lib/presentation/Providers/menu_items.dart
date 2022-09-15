import 'package:flutter/material.dart';

class MenuItems with ChangeNotifier {
  // ignore: prefer_final_fields
  Map<String, bool> _items = {};
  String? selectedItem;

  MenuItems._(this._items, this.selectedItem);

  factory MenuItems(List menuItems, {String? selectedItem}) {
    Map<String, bool> items = {};

    for (var menuItem in menuItems) {
      items[menuItem] = false;
    }

    return MenuItems._(items, selectedItem);
  }

  bool isSelectedItem(String item) {
    return selectedItem == item;
  }

  void addMenuItems(List<String> menuItems) {
    Map<String, bool> items = {};

    for (var menuItem in menuItems) {
      items[menuItem] = false;
    }

    _items = items;
  }

  int get itemCount {
    return _items.length;
  }

  List<String> get itemMenus {
    return _items.keys.toList();
  }

  String? menuItem(int index) {
    final keys = _items.keys.toList();
    return keys.length > index ? keys[index] : null;
  }

  bool isHovering(String menuItem) {
    return _items[menuItem] ?? false;
  }

  void updateHoveringForMenu(
    String menuItem,
    bool isHovering,
  ) {
    // String? menuItemKey = menuItem(index);
    if (_items[menuItem] != null) {
      _items[menuItem] = isHovering;
      notifyListeners();
    }
    // notifyListeners();
  }

  void toogleHovering(
    int index,
  ) {
    String? menuItemKey = menuItem(index);
    if (menuItemKey != null) {
      _items[menuItemKey] = !(_items[menuItemKey] ?? false);
      notifyListeners();
    }
    notifyListeners();
  }
}
