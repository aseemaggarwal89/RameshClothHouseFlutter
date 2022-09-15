// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

class AppConstants {
  static const num desktopNavbarHeight = 70;

  static const int splashScreenTitleFontSize = 48;
  static const int titleFontSize = 34;
  static const double sidePadding = 15;
  static const double widgetSidePadding = 20;
  static const double buttonRadius = 25;
  static const double imageRadius = 8;
  static const double linePadding = 4;
  static const double widgetBorderRadius = 34;
  static const double textFieldRadius = 4.0;
  static const EdgeInsets bottomSheetPadding =
      EdgeInsets.symmetric(horizontal: 16, vertical: 10);
  static const app_bar_size = 56.0;
  static const app_bar_expanded_size = 180.0;
  static const tile_width = 148.0;
  static const tile_height = 276.0;
}

// class AppColors {
//   static const red = Color(0xFFDB3022);
//   static const black = Color(0xFF222222);
//   static const lightGray = Color(0xFF9B9B9B);
//   static const darkGray = Color(0xFF979797);
//   static const white = Color(0xFFFFFFFF);
//   static const orange = Color(0xFFFFBA49);
//   static const background = Color(0xFFE5E5E5);
//   static const backgroundLight = Color(0xFFF9F9F9);
//   static const transparent = Color(0x00000000);
//   static const success = Color(0xFF2AA952);
//   static const green = Color(0xFF2AA952);
// }

// class AppGlobalColors {
//   static const kcPaleGrey = Color(0xFFEAEBF3);
//   static const kcBlack = Color.fromRGBO(0, 0, 0, 1.0);
// }

class AppConsts {
  static const page_size = 20;
}

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = true;
  static ThemeData get currentTheme =>
      _isDarkTheme ? CustomTheme.basicThemeData : CustomTheme.basicThemeData;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    //1
    return ThemeData(
        //2
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Montserrat', //3
        buttonTheme: ButtonThemeData(
          // 4
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.purpleAccent,
        ));
  }

  static ThemeData get darkTheme {
    return ThemeData(
        primaryColor: Colors.grey,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Montserrat',
        textTheme: ThemeData.dark().textTheme,
        buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.purpleAccent,
        ));
  }

  static ThemeData get basicThemeData {
    return ThemeData(
      primarySwatch: CommonColors.themePrimary,
      backgroundColor: CommonColors.canvasColor,
      canvasColor: CommonColors.canvasColor,
      fontFamily: 'Montserrat',
      scaffoldBackgroundColor: CommonColors.defaultPageBackgroundColor,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: CommonColors.navBarIconColor),
        elevation: 2.0,
        shadowColor: CommonColors.navBarShadowColor,
        backgroundColor: CommonColors.navBarColor,
        toolbarTextStyle: const TextStyle(
          color: CommonColors.navBarToolBarTextColor,
          fontSize: 18,
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: CommonColors.statusBarBrightness,
          statusBarColor: CommonColors.statusBarColor,
          statusBarIconBrightness: CommonColors.statusBarIconBrightness,
        ),
      ),
    );
  }
}
