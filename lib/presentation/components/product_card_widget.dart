import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';

class ProductCardWidget extends StatefulWidget {
  final String cardLabel;
  final double fontSize;
  final Color? cardLabelColor;
  final String? showMoreLabel;
  final Widget Function(BuildContext context)? builder;
  final bool showBorder;

  const ProductCardWidget({
    Key? key,
    required this.cardLabel,
    this.showMoreLabel,
    this.builder,
    this.fontSize = 18.0,
    this.cardLabelColor = Colors.black,
    this.showBorder = true,
  }) : super(key: key);

  @override
  State<ProductCardWidget> createState() => _ProductCardWidgetState();
}

class _ProductCardWidgetState extends State<ProductCardWidget> {
  bool isDetailVisible = false;
  VoidCallback? get onShowMore => () {
        setState(() {
          isDetailVisible = !isDetailVisible;
        });
      };

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context),
      margin: const EdgeInsets.only(right: 10, top: 30),
      decoration: BoxDecoration(
          border: widget.showBorder
              ? const Border.symmetric(
                  horizontal: BorderSide(
                      width: 1, color: ProductInfoCaseColor.kBoxBorderColor))
              : const Border()),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpaceRegular,
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: onShowMore,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LatoTextView(
                  label: widget.cardLabel,
                  fontType: AppTextType.DisplayLarge,
                  color: ProductInfoCaseColor.kTitleColor,
                  fontSize: 24,
                ),
                const Spacer(),
                isDetailVisible
                    ? const Icon(
                        Icons.remove,
                        color: ProductInfoCaseColor.kTitleColor,
                      )
                    : const Icon(
                        Icons.add,
                        color: ProductInfoCaseColor.kTitleColor,
                      ),
                horizontalSpaceMedium,
              ],
            ),
          ),
          verticalSpaceRegular,
          if (widget.builder != null && isDetailVisible)
            widget.builder!(context),
        ],
      ),
    );
  }
}
