import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import 'package:rameshclothhouse/presentation/core/resource/app_assets.dart';

import '../../../config/app_colors.dart';

class ProductPolicyBannerWidget extends StatelessWidget {
  final Color backgroundColor;
  final double padding;

  const ProductPolicyBannerWidget({
    Key? key,
    this.backgroundColor = Colors.transparent,
    this.padding = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      color: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                SvgPicture.asset(
                  R.ASSETS_ICON_RETURN_POLICY_SVG,
                  width: 24.0,
                  height: 24.0,
                ),
                horizontalSpaceSmall,
                const Expanded(
                  child: LatoTextView(
                    label: "Easy 3 days\nreturn Policy",
                    color: ProductPolicyBannerColor.kcBlackTwo,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 1.0,
            margin: const EdgeInsets.symmetric(horizontal: 11.0),
            height: 24.0,
            color: ProductPolicyBannerColor.kcBlack54,
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                SvgPicture.asset(
                  R.ASSETS_ICON_REFUND_POLICY_SVG,
                  width: 24.0,
                  height: 24.0,
                ),
                horizontalSpaceSmall,
                const Expanded(
                  child: LatoTextView(
                    label: "Get 100%\nmoney back\nin 1 hour",
                    color: ProductPolicyBannerColor.kcBlackTwo,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 1.0,
            margin: const EdgeInsets.symmetric(horizontal: 11.0),
            height: 24.0,
            color: ProductPolicyBannerColor.kcBlack54,
          ),
          Expanded(
            child: Row(
              children: [
                SvgPicture.asset(
                  R.ASSETS_ICON_CASH_ON_DELIVERY_SVG,
                  width: 24.0,
                  height: 24.0,
                ),
                horizontalSpaceSmall,
                const Expanded(
                  child: LatoTextView(
                    label: "Pay Cash on\nDelivery",
                    color: ProductPolicyBannerColor.kcBlackTwo,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
