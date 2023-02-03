import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import 'package:rameshclothhouse/presentation/features/productDetails/views/product_showcase_section.dart';
import '../../../../domain_layer/domain_layer.dart';
// ignore: depend_on_referenced_packages
import 'package:hexcolor/hexcolor.dart';

class ProductInfoSection extends StatelessWidget {
  final ProductDetailDTO product;

  const ProductInfoSection({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ProductBatchShowCaseProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpaceRegular,
        LatoTextView(
          fontSize: 24,
          label: product.productDetailName(),
          fontType: AppTextType.DisplayMedium,
        ),
        if (product.ratingsAverage != null &&
            product.ratingsAverage!.toDouble() >= 1)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              width: 65,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorDark,
                borderRadius: BorderRadius.circular(2.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  horizontalSpaceSmall,
                  LatoTextView(
                    label: '${product.ratingsAverage}',
                    fontType: AppTextType.TitleMedium,
                    color: Theme.of(context).backgroundColor,
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: Theme.of(context).backgroundColor,
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                ],
              ),
            ),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LatoTextView(
              label: product.productCurrentPrice(),
              fontType: AppTextType.DisplayMedium,
              fontSize: 20,
            ),
            horizontalSpaceSmall,
            if (product.discountPrice != null && product.discountPrice! > 0)
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, right: 5),
                    child: LatoTextView(
                      label: formatAmountWithSymbol(product.price),
                      fontType: AppTextType.Normal,
                      decoration: TextDecoration.lineThrough,
                      fontSize: 14,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, right: 5),
                    child: LatoTextView(
                      label: '${product.discountPercent}',
                      color: Theme.of(context).primaryColorDark,
                      fontType: AppTextType.Medium,
                    ),
                  )
                ],
              ),
          ],
        ),
        verticalSpaceRegular,
        if (!product.isStockAvailable)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const LatoTextView(
                label: 'SOLD OUT',
                fontType: AppTextType.DisplayLarge,
              ),
              const LatoTextView(
                label: 'This item is currently out of stock',
                fontType: AppTextType.DisplayNormal,
              )
            ],
          ),
        if (product.isStockAvailable &&
            viewModel.isSelectedBatchAvailable() &&
            !viewModel.isBatchStockAvailable())
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const LatoTextView(
                label: 'SOLD OUT',
                fontType: AppTextType.DisplayLarge,
              ),
              const LatoTextView(
                label: 'This color is currently out of stock',
                fontType: AppTextType.DisplayNormal,
              )
            ],
          ),
        dividerWithoutColor,
        if (product.isStockAvailable)
          Column(
            children: [
              // Color Batch
              if (viewModel.isBatchAvailable())
                Column(
                  children: [
                    verticalSpaceMedium,
                    ColorBatchWidget(product: product),
                  ],
                ),
              if (viewModel.isSizeAttributesAvailable())
                Column(
                  children: [
                    verticalSpaceMedium,
                    SizesBatchWidget(product: product),
                  ],
                ),
            ],
          ),
        Container(
          color: Colors.white,
          // padding: const EdgeInsets.all(16.0),
          // width: screenWidth(context),
          child: Column(
            children: [
              // Container(
              //   padding: const EdgeInsets.all(8.0),
              //   decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //       colors: [
              //         ProductInfoCaseColor.kcLightGold,
              //         ProductInfoCaseColor.kcLightGold.withOpacity(0.7),
              //         ProductInfoCaseColor.kcPale,
              //       ],
              //       begin: Alignment.topLeft,
              //       end: Alignment.bottomRight,
              //     ),
              //     borderRadius: BorderRadius.circular(4.0),
              //   ),
              //   child: Column(
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           crossAxisAlignment: CrossAxisAlignment.center,
              //           children: [
              //             Image.asset(
              //               R.ASSETS_ICON_TRUST_STAMP_ICON_PNG,
              //               height: 70.0,
              //               width: 70.0,
              //             ),
              //             horizontalSpaceSmallRegular,
              //             Expanded(
              //               child: Column(
              //                 mainAxisAlignment: MainAxisAlignment.start,
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: const [
              //                   LatoTextView(
              //                     label: 'Don\'t worry!',
              //                     color: Color.fromRGBO(42, 48, 48, 1.0),
              //                     fontType: AppTextType.DisplayMedium,
              //                   ),
              //                   verticalSpaceSmall,
              //                   LatoTextView(
              //                     label:
              //                         'we have 100% money back in 1 hour if you don\'t like the product',
              //                     color: Color.fromRGBO(42, 48, 48, 1.0),
              //                     fontType: AppTextType.DisplayMedium,
              //                   ),
              //                 ],
              //               ),
              //             )
              //           ],
              //         ),
              //       ),
              //       const Divider(
              //         thickness: 1.0,
              //         indent: 0.0,
              //         endIndent: 0.0,
              //         color: Color.fromRGBO(0, 0, 0, 0.08),
              //       ),
              //       const ProductPolicyBannerWidget(),
              //     ],
              //   ),
              // ),
              verticalSpaceRegular,
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     Expanded(
              //       flex: 1,
              //       child: StreamBuilder<ProductAttributes>(
              //         stream: viewModel.productQuantity,
              //         initialData: viewModel.defaultQuantityAttributes(),
              //         builder: (context, snapshot) {
              //           return ProductAttributeDropDown(
              //             value: snapshot.data,
              //             isExpanded: false,
              //             isDense: true,
              //             attributes: viewModel.getQuantityAttributes(),
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
              //         initialData: viewModel.defaultSizeAttributes(),
              //         builder: (context, snapshot) {
              //           return ProductAttributeDropDown(
              //             value: snapshot.data,
              //             attributes: viewModel.sizeAttributes,
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

class ColorBatchWidget extends StatelessWidget {
  const ColorBatchWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductDetailDTO product;

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ProductBatchShowCaseProvider>(context);
    return SizedBox(
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const LatoTextView(
            label: 'Colors',
            fontType: AppTextType.DisplayLarge,
            color: ProductInfoCaseColor.kTitleColor,
          ),
          horizontalSpaceRegular,
          ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: viewModel.batchs.length,
              itemBuilder: ((context, index) {
                ProductBatch colorBatch = viewModel.batchs[index];
                return (colorBatch.images?.isNotEmpty ?? false)
                    ? Row(
                        children: [
                          ProductColorThumbnailWidget(
                            colorBatch: colorBatch,
                            index: index,
                            isSelected: viewModel.isBatchSelected(colorBatch),
                            onTap: (() {
                              if (colorBatch.images?.isNotEmpty ?? false) {
                                viewModel.updateSelectedBatch(colorBatch);
                              }
                              // showColorInfoPopover(context, colorBatch.color!);
                            }),
                          ),
                        ],
                      )
                    : Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: HexColor(colorBatch.color!.colorCode),
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: colorBatch.isAvailable
                                ? const Color.fromRGBO(196, 196, 196, 1.0)
                                : Colors.red,
                          ),
                        ),
                        child: Center(
                            child: LatoTextView(
                          label: colorBatch.color?.name ?? "",
                        )),
                      );
              })),
        ],
      ),
    );
  }
}

class ProductColorThumbnailWidget extends StatelessWidget {
  final int index;
  final ProductBatch colorBatch;
  final Function()? onTap;
  final bool isSelected;

  const ProductColorThumbnailWidget({
    Key? key,
    required this.index,
    required this.colorBatch,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {},
      onTap: onTap,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 60,
                margin: const EdgeInsets.only(right: 8.0),
                decoration: BoxDecoration(
                  color: ProductInfoCaseColor.kBoxColorActive,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                      color: isSelected
                          ? Theme.of(context).primaryColor
                          : ProductInfoCaseColor.kBoxBorderColor
                      // : Colors.red,
                      ),
                ),
                child: AspectRatio(
                  aspectRatio: 1.0,
                  child: colorBatch.images != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: ExtendedImage.network(
                            colorBatch.images!.first,
                            cache: true,
                            width: 48.0,
                            height: 48.0,
                            alignment: Alignment.center,
                            fit: BoxFit.fitWidth,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        )
                      : Container(),
                ),
              ),
              LatoTextView(
                label: colorBatch.color?.name ?? '',
                color: colorBatch.color != null
                    ? HexColor(colorBatch.color!.colorCode)
                    : Colors.transparent,
                textOverflow: TextOverflow.clip,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class SizesBatchWidget extends StatelessWidget {
  const SizesBatchWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductDetailDTO product;

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ProductBatchShowCaseProvider>(context);
    return SizedBox(
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const LatoTextView(
            label: 'Size',
            fontType: AppTextType.DisplayLarge,
            color: ProductInfoCaseColor.kTitleColor,
          ),
          horizontalSpaceRegular,
          ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: viewModel.productSizes.length,
              itemBuilder: ((context, index) {
                SizeInfo sizeInfo = viewModel.productSizes[index];
                return Container(
                  width: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: viewModel.isSizeStockAvailable(sizeInfo)
                        ? ProductInfoCaseColor.kBoxColorActive
                        : ProductInfoCaseColor.kBoxColorUnActive,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      // color: ProductInfoCaseColor.kBoxBorderColor,
                      color: const Color.fromRGBO(196, 196, 196, 1.0),
                    ),
                  ),
                  child: Center(
                      child: LatoTextView(
                    label: sizeInfo.display,
                  )),
                );
              })),
        ],
      ),
    );
  }
}
