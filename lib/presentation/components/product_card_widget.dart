import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/components/text_button_view.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';

class ProductCardWidget extends StatelessWidget {
  final String cardLabel;
  final String? cardSubLabel;
  final String? cardIcon;
  final Color? cardBackgroundColor;
  final EdgeInsetsGeometry? titleMargin;
  final double fontSize;
  final Color? cardLabelColor;
  final String? showMoreLabel;
  final Widget Function(BuildContext context)? builder;
  final VoidCallback? onShowMore;
  final bool showBorder;

  const ProductCardWidget({
    Key? key,
    required this.cardLabel,
    this.cardSubLabel,
    this.cardIcon,
    this.showMoreLabel,
    this.cardBackgroundColor = Colors.white,
    this.builder,
    this.titleMargin,
    this.onShowMore,
    this.fontSize = 18.0,
    this.cardLabelColor = Colors.black,
    this.showBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: cardBackgroundColor,
          border: showBorder
              ? Border.all(color: ProductCardWidgetColor.kcMushroom, width: 1.0)
              : const Border()),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          showMoreLabel != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if (cardIcon != null) SvgPicture.asset(cardIcon!),
                          if (cardIcon != null) horizontalSpaceSmall,
                          LatoTextView(
                            label: cardLabel,
                            color: ProductCardWidgetColor.kcBlackTwo,
                            fontType: AppTextType.Medium,
                          )
                        ],
                      ),
                    ),
                    horizontalSpaceSmallRegular,
                    TextButtonView(
                      label: '$showMoreLabel',
                      fontWeight: FontWeight.bold,
                      trailing: const Icon(
                        Icons.chevron_right_rounded,
                        color: ProductCardWidgetColor.kcReddishPink,
                      ),
                      onPressed: onShowMore,
                    )
                  ],
                )
              : Padding(
                  padding: titleMargin ?? const EdgeInsets.only(right: 105.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LatoTextView(
                        label: cardLabel,
                        maxLine: 2,
                        color: cardLabelColor,
                        fontType: AppTextType.Medium,
                      ),
                      if (cardSubLabel != null) verticalSpaceSmall,
                      if (cardSubLabel != null)
                        LatoTextView(
                          label: cardSubLabel ?? '',
                          color: ProductCardWidgetColor.kcSlate,
                        )
                    ],
                  ),
                ),
          verticalSpaceRegular,
          if (builder != null) builder!(context),
        ],
      ),
    );
  }
}
