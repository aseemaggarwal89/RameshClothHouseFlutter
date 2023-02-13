import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';

import 'lato_text_view.dart';

class AppElevatedButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget? leading;
  final Widget? trailing;
  final String label;
  final double? fontSize;
  final Color color;
  final double height;
  final double? width;
  final Color? backgroundColor;
  final double radius;
  final AppTextType fontStyle;

  const AppElevatedButton({
    Key? key,
    this.onPressed,
    this.leading,
    this.trailing,
    required this.label,
    this.fontSize,
    this.color = CommonColors.bodyText1,
    this.height = 45.0,
    this.width,
    this.backgroundColor,
    this.radius = 0,
    this.fontStyle = AppTextType.Medium,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
          backgroundColor:
              backgroundColor ?? Theme.of(context).primaryColorLight,
          fixedSize:
              width != null ? Size(width!, height) : Size.fromHeight(height),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius))),
      onPressed: onPressed,
      child: Center(
        child: LatoTextView(
          label: label,
          fontSize: fontSize,
          color: color,
          fontType: fontStyle,
        ),
      ),
    );
  }
}
