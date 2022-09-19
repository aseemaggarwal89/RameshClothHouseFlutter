import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';

import 'lato_text_view.dart';

class TextButtonView extends StatelessWidget {
  final Function()? onPressed;
  final Widget? leading;
  final Widget? trailing;
  final String label;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final double height;
  final Color backgroundColor;
  final double radius;
  final FontType fontStyle;

  const TextButtonView({
    Key? key,
    this.onPressed,
    this.leading,
    this.trailing,
    required this.label,
    required this.fontWeight,
    required this.fontSize,
    this.color = TextButtonViewColor.kcReddishPink,
    this.height = 45.0,
    this.backgroundColor = Colors.transparent,
    this.radius = 0,
    this.fontStyle = FontType.NORMAL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          fixedSize: Size.fromHeight(height),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius))),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          leading ?? const SizedBox.shrink(),
          if (leading != null) horizontalSpaceSmall,
          LatoTextView(
            label: label,
            fontSize: fontSize,
            color: color,
            fontType: fontStyle,
          ),
          if (trailing != null) horizontalSpaceSmall,
          trailing ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
