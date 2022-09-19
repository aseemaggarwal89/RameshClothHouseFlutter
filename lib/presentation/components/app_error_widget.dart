import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/components/text_button_view.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import 'package:rameshclothhouse/presentation/core/resource/app_assets.dart';

class AppErrorWidget extends StatelessWidget {
  final String title;
  final String? subTitle;
  final Function()? tryAgain;

  const AppErrorWidget({
    Key? key,
    required this.title,
    this.subTitle,
    this.tryAgain,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSpaceRegular,
          ExtendedImage.asset(R.ASSETS_IMAGES_EMPTY_CART_PNG),
          verticalSpaceRegular,
          LatoTextView(
            label: title,
            color: CommonColors.errorTitleColor,
            fontType: FontType.BOLD,
            fontSize: 18.0,
          ),
          verticalSpaceSmall,
          LatoTextView(
            label: subTitle ?? '',
            color: CommonColors.errorMessageColor,
            fontSize: 14.0,
          ),
          verticalSpaceRegular,
          TextButtonView(
            label: 'View All Products',
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
            height: 30.0,
            radius: 4.0,
            color: TextButtonViewColor.kcReddishPink,
            backgroundColor: TextButtonViewColor.kcLightPink,
            onPressed: tryAgain,
          )
        ],
      ),
    );
  }
}
