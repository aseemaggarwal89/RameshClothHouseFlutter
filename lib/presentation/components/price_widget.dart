import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';

class PriceWidget extends StatelessWidget {
  final String label;
  final String value;
  final Color? labelColor;
  final Color? valueColor;
  final double fontSize;

  const PriceWidget({
    Key? key,
    required this.label,
    required this.value,
    this.valueColor = Colors.greenAccent,
    this.labelColor = Colors.greenAccent,
    this.fontSize = 14.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LatoTextView(
          label: label,
          color: labelColor,
        ),
        LatoTextView(
          label: value,
          color: valueColor,
          fontType: AppTextType.Medium,
        ),
      ],
    );
  }
}
