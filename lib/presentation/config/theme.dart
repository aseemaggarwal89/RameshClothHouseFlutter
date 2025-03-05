// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';

import 'app_colors.dart';

class AppConsts {
  static const page_size = 20;
}

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  // static bool _isDarkTheme = true;
  static ThemeData get currentTheme => CustomTheme.basicThemeData;

  static ThemeData get basicThemeData {
    return ThemeData(
      primarySwatch: CommonColors.themePrimary,
      canvasColor: CommonColors.canvasColor,
      fontFamily: 'Montserrat',
      scaffoldBackgroundColor: CommonColors.defaultPageBackgroundColor,
      textTheme: TextTheme(
        bodySmall: GoogleFonts.lato(
          fontStyle: FontStyle.normal,
          fontSize: AppTextType.Normal.fontSize,
          fontWeight: AppTextType.Normal.fontType?.fontWeight,
          color: CommonColors.bodyText1,
        ),
        bodyMedium: GoogleFonts.lato(
          fontStyle: FontStyle.normal,
          fontSize: AppTextType.Medium.fontSize,
          fontWeight: AppTextType.Medium.fontType?.fontWeight,
          color: CommonColors.bodyText1,
        ),
        bodyLarge: GoogleFonts.lato(
          fontStyle: FontStyle.normal,
          fontSize: AppTextType.Large.fontSize,
          fontWeight: AppTextType.Large.fontType?.fontWeight,
          color: CommonColors.bodyText1,
        ),
        titleSmall: GoogleFonts.lato(
          fontStyle: FontStyle.normal,
          fontSize: AppTextType.TitleNormal.fontSize,
          fontWeight: AppTextType.TitleNormal.fontType?.fontWeight,
          color: CommonColors.bodyText1,
        ),
        titleMedium: GoogleFonts.lato(
          fontStyle: FontStyle.normal,
          fontSize: AppTextType.TitleMedium.fontSize,
          fontWeight: AppTextType.TitleMedium.fontType?.fontWeight,
          color: CommonColors.bodyText1,
        ),
        titleLarge: GoogleFonts.lato(
          fontStyle: FontStyle.normal,
          fontSize: AppTextType.TitleLarge.fontSize,
          fontWeight: AppTextType.TitleLarge.fontType?.fontWeight,
          color: CommonColors.bodyText1,
        ),
        displaySmall: GoogleFonts.lato(
          fontStyle: FontStyle.normal,
          fontSize: AppTextType.DisplayNormal.fontSize,
          fontWeight: AppTextType.DisplayNormal.fontType?.fontWeight,
          color: CommonColors.bodyText1,
        ),
        displayMedium: GoogleFonts.lato(
          fontStyle: FontStyle.normal,
          fontSize: AppTextType.DisplayMedium.fontSize,
          fontWeight: AppTextType.DisplayMedium.fontType?.fontWeight,
          color: CommonColors.bodyText1,
        ),
        displayLarge: GoogleFonts.lato(
          fontStyle: FontStyle.normal,
          fontSize: AppTextType.DisplayLarge.fontSize,
          fontWeight: AppTextType.DisplayLarge.fontType?.fontWeight,
          color: CommonColors.bodyText1,
        ),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(color: CommonColors.navBarIconColor),
        elevation: 2.0,
        shadowColor: CommonColors.navBarShadowColor,
        backgroundColor: CommonColors.navBarColor,
        toolbarTextStyle: const TextStyle(
          color: CommonColors.bodyText1,
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
