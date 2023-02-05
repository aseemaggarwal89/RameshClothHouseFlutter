// ignore_for_file: constant_identifier_names

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:html_unescape/html_unescape.dart';

enum FontType { NORMAL, MEDIUM, BOLD, SEMIBOLD, EXTRABOLD }

extension FontTypeExtension on FontType {
  FontWeight get fontWeight {
    switch (this) {
      case FontType.MEDIUM:
        return FontWeight.w500;
      case FontType.BOLD:
        return FontWeight.bold;
      case FontType.SEMIBOLD:
        return FontWeight.w600;
      case FontType.NORMAL:
        return FontWeight.normal;
      case FontType.EXTRABOLD:
        return FontWeight.w900;
    }
  }
}

enum AppTextType {
  Normal,
  Medium,
  Large,
  TitleNormal,
  TitleMedium,
  TitleLarge,
  DisplayNormal,
  DisplayMedium,
  DisplayLarge,
}

extension TextTypeExtension on AppTextType {
  TextStyle? style(BuildContext context) {
    switch (this) {
      case AppTextType.Normal:
        return Theme.of(context).textTheme.bodySmall;
      case AppTextType.Medium:
        return Theme.of(context).textTheme.bodyMedium;
      case AppTextType.Large:
        return Theme.of(context).textTheme.bodyLarge;
      case AppTextType.TitleNormal:
        return Theme.of(context).textTheme.titleSmall;
      case AppTextType.TitleMedium:
        return Theme.of(context).textTheme.titleMedium;
      case AppTextType.TitleLarge:
        return Theme.of(context).textTheme.titleLarge;
      case AppTextType.DisplayNormal:
        return Theme.of(context).textTheme.displaySmall;
      case AppTextType.DisplayMedium:
        return Theme.of(context).textTheme.displayMedium;
      case AppTextType.DisplayLarge:
        return Theme.of(context).textTheme.displayLarge;
    }
  }

  double? get fontSize {
    switch (this) {
      case AppTextType.Normal:
        return 13;
      case AppTextType.Medium:
        return 14;
      case AppTextType.Large:
        return 15;
      case AppTextType.TitleNormal:
        return 14;
      case AppTextType.TitleMedium:
        return 15;
      case AppTextType.TitleLarge:
        return 17;
      case AppTextType.DisplayNormal:
        return 14;
      case AppTextType.DisplayMedium:
        return 18;
      case AppTextType.DisplayLarge:
        return 19;
    }
  }

  FontType? get fontType {
    switch (this) {
      case AppTextType.Normal:
        return FontType.NORMAL;
      case AppTextType.Medium:
        return FontType.SEMIBOLD;
      case AppTextType.Large:
        return FontType.SEMIBOLD;
      case AppTextType.TitleNormal:
        return FontType.NORMAL;
      case AppTextType.TitleMedium:
        return FontType.BOLD;
      case AppTextType.TitleLarge:
        return FontType.SEMIBOLD;
      case AppTextType.DisplayNormal:
        return FontType.NORMAL;
      case AppTextType.DisplayMedium:
        return FontType.BOLD;
      case AppTextType.DisplayLarge:
        return FontType.BOLD;
    }
  }
}

class LatoTextView extends StatelessWidget {
  final String label;
  final AppTextType fontType;
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
  final bool wordWrapp;

  const LatoTextView({
    Key? key,
    required this.label,
    this.fontType = AppTextType.TitleNormal,
    this.color,
    this.decoration,
    this.isHtml = false,
    this.textAlignment,
    this.maxLine,
    this.textOverflow,
    this.lineHeight,
    this.fontStyle = FontStyle.normal,
    this.isTranslatable = true,
    this.fontSize,
    this.wordWrapp = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle? style = fontType.style(context);

    if (color != null) {
      style = style?.copyWith(color: color);
    }

    if (fontStyle != null) {
      style = style?.copyWith(fontStyle: fontStyle);
    }

    if (fontSize != null) {
      style = style?.copyWith(fontSize: fontSize);
    }

    if (decoration != null) {
      style = style?.copyWith(decoration: decoration);
    }
    if (isHtml) {
      var unescape = new HtmlUnescape();
      var text = unescape.convert(label);
      print(text);
      final _htmlContent = """
<ul><li>List 1</li><li>List 2</li><li>List 3</li></ul>
  <div>
    <h1>This is a title</h1>
    <p>This is a <strong>paragraph</strong>.</p>
    <p>I like <i>dogs</i></p>
    <p>Red text</p>
    <ul>
        <li>List item 1</li>
        <li>List item 2</li>
        <li>List item 3</li>
    </ul>
    <img src='https://www.kindacode.com/wp-content/uploads/2020/11/my-dog.jpg' />
  </div>
  """;
      return Html(
        data: """
$text
""",
        // Styling with CSS (not real CSS)
        style: {
          'h1': Style(color: Colors.red),
          'p': Style(color: Colors.black87, fontSize: FontSize.medium),
        },
      );
    }
    return wordWrapp
        ? Flexible(
            child: Text(
            isTranslatable ? label.tr() : label,
            textAlign: textAlignment,
            maxLines: maxLine,
            overflow: textOverflow,
            style: style,
          ))
        : Text(
            isTranslatable ? label.tr() : label,
            textAlign: textAlignment,
            maxLines: maxLine,
            overflow: textOverflow,
            style: style,
          );
  }
}
