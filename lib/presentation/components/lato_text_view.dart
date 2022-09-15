// ignore_for_file: constant_identifier_names

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum FontType {
  NORMAL,
  MEDIUM,
  BOLD,
  SEMIBOLD,
  BLACK,
  EXTRABOLD,
}

extension FontTypeExtension on FontType {
  FontWeight get fontWeight {
    switch (this) {
      case FontType.MEDIUM:
        return FontWeight.w500;
      case FontType.BOLD:
        return FontWeight.bold;
      case FontType.SEMIBOLD:
        return FontWeight.w600;
      case FontType.BLACK:
        return FontWeight.w900;
      case FontType.NORMAL:
        return FontWeight.normal;
      case FontType.EXTRABOLD:
        return FontWeight.w900;
    }
  }
}

class LatoTextView extends StatelessWidget {
  final String label;
  final FontType fontType;
  final double? fontSize;
  final Color? color;
  final TextDecoration? decoration;
  final bool isHtml;
  final TextAlign? textAlignment;
  final TextOverflow? textOverflow;
  final int? maxLine;
  final double? lineHeight;
  final FontStyle? fontStyle;
  final bool isTranslatable;

  const LatoTextView({
    Key? key,
    required this.label,
    this.fontType = FontType.NORMAL,
    this.fontSize,
    this.color,
    this.decoration,
    this.isHtml = false,
    this.textAlignment,
    this.maxLine,
    this.textOverflow,
    this.lineHeight,
    this.fontStyle = FontStyle.normal,
    this.isTranslatable = true,
  }) : super(key: key);

  // const LatoTextView.medium({
  //   Key? key,
  //   required this.label,
  //   this.fontSize,
  //   this.color,
  //   this.decoration,
  //   this.isHtml = false,
  //   this.textAlignment,
  //   this.maxLine,
  //   this.textOverflow,
  //   this.lineHeight,
  //   this.fontStyle = FontStyle.normal,
  //   this.fontType = FontType.MEDIUM,
  //   this.isTranslatable = true,
  // }) : super(key: key);

  // const LatoTextView.bold({
  //   Key? key,
  //   required this.label,
  //   this.fontSize,
  //   this.color,
  //   this.decoration,
  //   this.isHtml = false,
  //   this.textAlignment,
  //   this.maxLine,
  //   this.textOverflow,
  //   this.lineHeight,
  //   this.fontStyle = FontStyle.normal,
  //   this.isTranslatable = true,
  //   this.fontType = FontType.BOLD,
  // }) : super(key: key);

  // const LatoTextView.semiBold({
  //   Key? key,
  //   required this.label,
  //   this.fontSize,
  //   this.color,
  //   this.decoration,
  //   this.isHtml = false,
  //   this.textAlignment,
  //   this.maxLine,
  //   this.textOverflow,
  //   this.lineHeight,
  //   this.fontStyle = FontStyle.normal,
  //   this.isTranslatable = true,
  //   this.fontType = FontType.SEMIBOLD,
  // }) : super(key: key);

  // const LatoTextView.black({
  //   Key? key,
  //   required this.label,
  //   this.fontSize,
  //   this.color,
  //   this.decoration,
  //   this.isHtml = false,
  //   this.textAlignment,
  //   this.maxLine,
  //   this.textOverflow,
  //   this.lineHeight,
  //   this.fontStyle = FontStyle.normal,
  //   this.isTranslatable = true,
  //   this.fontType = FontType.BLACK,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      isTranslatable ? label.tr() : label,
      textAlign: textAlignment,
      maxLines: maxLine,
      overflow: textOverflow,
      style: GoogleFonts.lato(
        fontStyle: fontStyle,
        fontSize: fontSize,
        fontWeight: fontType.fontWeight,
        color: color,
        height: lineHeight,
        decoration: decoration,
      ),
    );
  }
}
