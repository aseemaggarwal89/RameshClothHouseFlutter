import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import 'package:rameshclothhouse/presentation/core/resource/app_assets.dart';
import 'package:rameshclothhouse/presentation/features/productDetails/views/product_policy_banner_widget.dart';
import 'package:rameshclothhouse/presentation/features/productDetails/views/product_showcase_section.dart';
import 'package:stacked/stacked.dart';

import '../../../../domain_layer/domain_layer.dart';

class ProductInfoSection extends ViewModelWidget<ProductDetailsViewModel> {
  const ProductInfoSection({Key? key}) : super(key: key, reactive: false);

  @override
  Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
    ProductDTO? product = viewModel.product;
    if (product == null) {
      return const SizedBox.shrink();
    }
    return Column(
      children: [
        if (!product.isStockAvailable)
          Container(
            padding: const EdgeInsets.all(8),
            color: ProductInfoCaseColor.kcLightPink,
            child: const Center(
              child: LatoTextView(
                label: 'Due to high demand, this product went out of stock',
                color: ProductInfoCaseColor.kcReddishPink,
              ),
            ),
          ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpaceRegular,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: LatoTextView(
                      label: product.name,
                      color: ProductInfoCaseColor.kcBlackTwo,
                      fontType: AppTextType.Medium,
                    ),
                  ),
                  horizontalSpaceRegular,
                  Expanded(
                    flex: 1,
                    child: OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: const BorderSide(
                            color: Color.fromRGBO(222, 222, 235, 1.0),
                            width: 1.0,
                          ),
                        ),
                        fixedSize: const Size(67, 28),
                      ),
                      onPressed: () {
                        // viewModel.downloadFile(
                        //     product.shareImages?.referralReview?.imageUrl);
                      },
                      icon: SvgPicture.asset(R.ASSETS_ICON_SHARE_SVG),
                      label: const LatoTextView(
                        label: 'Share',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              verticalSpaceRegular,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LatoTextView(
                    label: '${product.ratingsAverage}',
                    color: ProductInfoCaseColor.kcBrownishGrey,
                  ),
                  const Icon(
                    Icons.star_rounded,
                    color: ProductInfoCaseColor.kcGoldenRod,
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  const LatoTextView(
                    label: '76 Ratings & 780 Reviews',
                    color: ProductInfoCaseColor.kcBrownishGrey,
                  ),
                  horizontalSpaceTiny,
                  const Icon(
                    Icons.chevron_right_rounded,
                    color: Colors.black,
                  ),
                ],
              ),
              verticalSpaceRegular,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LatoTextView(
                    label: '\u0930${product.discountPrice}',
                    color: ProductInfoCaseColor.kcRarely,
                    fontType: AppTextType.Medium,
                  ),
                  horizontalSpaceTiny,
                  LatoTextView(
                    label: '\u0930${product.price}',
                    color: ProductInfoCaseColor.kcLiteText,
                    decoration: TextDecoration.lineThrough,
                  ),
                  horizontalSpaceSmall,
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 6.0),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(46, 142, 46, 1.0),
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                    child: LatoTextView(
                      label: 'YOU SAVE: \u0930${product.discountPercent}',
                      color: Colors.white,
                      fontType: AppTextType.Medium,
                    ),
                  )
                ],
              ),
              verticalSpaceSmall,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(R.ASSETS_ICON_DELIVERY_TRUCK_SVG),
                  const SizedBox(
                    width: 12.0,
                  ),
                  const LatoTextView(
                    label: 'Free Delivery',
                    color: Color.fromRGBO(80, 80, 80, 1.0),
                    lineHeight: 0.8,
                  )
                ],
              ),
              verticalSpaceRegular
            ],
          ),
        ),
        dividerWithoutColor,
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(16.0),
          width: screenWidth(context),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      ProductInfoCaseColor.kcLightGold,
                      ProductInfoCaseColor.kcLightGold.withOpacity(0.7),
                      ProductInfoCaseColor.kcPale,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            R.ASSETS_ICON_TRUST_STAMP_ICON_PNG,
                            height: 70.0,
                            width: 70.0,
                          ),
                          horizontalSpaceSmallRegular,
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                LatoTextView(
                                  label: 'Don\'t worry!',
                                  color: Color.fromRGBO(42, 48, 48, 1.0),
                                  fontType: AppTextType.DisplayMedium,
                                ),
                                verticalSpaceSmall,
                                LatoTextView(
                                  label:
                                      'we have 100% money back in 1 hour if you don\'t like the product',
                                  color: Color.fromRGBO(42, 48, 48, 1.0),
                                  fontType: AppTextType.DisplayMedium,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1.0,
                      indent: 0.0,
                      endIndent: 0.0,
                      color: Color.fromRGBO(0, 0, 0, 0.08),
                    ),
                    const ProductPolicyBannerWidget(),
                  ],
                ),
              ),
              verticalSpaceRegular,
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     Expanded(
              //       flex: 1,
              //       child: StreamBuilder<ProductAttributes>(
              //         stream: viewModel.productQuantity,
              //         initialData: ProductAttributes('${viewModel.quantity}',
              //             isAvailable: true),
              //         builder: (context, snapshot) {
              //           return ProductAttributeDropDown(
              //             value: snapshot.data,
              //             isExpanded: false,
              //             isDense: true,
              //             attributes: viewModel.getQuantityAttributes(
              //               viewModel.productDetailsResponse!.quantityAllowed,
              //               viewModel
              //                   .productDetailsResponse!.maxQuantityAllowed,
              //             ),
              //             label: 'QTY',
              //             onChanged: (value) {
              //               viewModel.onProductQuantityChange(value!);
              //             },
              //           );
              //         },
              //       ),
              //     ),
              //     horizontalSpaceRegular,
              //     Expanded(
              //       flex: 1,
              //       child: StreamBuilder<ProductAttributes>(
              //         stream: viewModel.productSize,
              //         builder: (context, snapshot) {
              //           return ProductAttributeDropDown(
              //             value: snapshot.data,
              //             attributes: product.sizeAttributes,
              //             label: 'SIZE',
              //             isExpanded: false,
              //             isDense: true,
              //             onChanged: viewModel.onProductSizeChange,
              //           );
              //         },
              //       ),
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ],
    );
  }
}
