import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:rameshclothhouse/gen/assets.gen.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';

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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSpaceRegular,
          ExtendedImage.asset(Assets.images.emptyCart.path),
          verticalSpaceRegular,
          LatoTextView(
            label: title,
            color: CommonColors.errorTitleColor,
            fontType: AppTextType.DisplayMedium,
          ),
          verticalSpaceSmall,
          LatoTextView(
            label: subTitle ?? '',
            color: CommonColors.errorMessageColor,
          ),
          verticalSpaceRegular,
        ],
      ),
    );
  }
}
