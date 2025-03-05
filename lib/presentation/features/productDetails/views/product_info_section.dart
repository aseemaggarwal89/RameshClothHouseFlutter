import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/components/product_attribute_drop_down.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import 'package:rameshclothhouse/presentation/features/productDetails/views/product_description_section.dart';
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
                    color: Theme.of(context).canvasColor,
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: Theme.of(context).canvasColor,
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
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              LatoTextView(
                label: 'SOLD OUT',
                fontType: AppTextType.DisplayLarge,
              ),
              LatoTextView(
                label: 'This item is currently out of stock',
                fontType: AppTextType.DisplayNormal,
              )
            ],
          ),
        if (viewModel.isSelectedBatchStockNotAvailable() ||
            viewModel.isSelectedSizeStockNotAvailable())
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              LatoTextView(
                label: 'SOLD OUT',
                fontType: AppTextType.DisplayLarge,
              ),
              LatoTextView(
                label: 'This item is currently out of stock',
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
              Column(
                children: [
                  verticalSpaceMedium,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const LatoTextView(
                        label: 'Quantity',
                        fontType: AppTextType.DisplayLarge,
                        color: ProductInfoCaseColor.kTitleColor,
                      ),
                      horizontalSpaceRegular,
                      SizedBox(
                        width: 60,
                        child: ProductAttributeDropDown<int>(
                          selectedItem: () => viewModel.productSelectedQuantity,
                          attributes: [
                            for (var i = 1;
                                i <= viewModel.maximumQuantityAllowed;
                                i++)
                              i
                          ],
                          onChanged: (value) {
                            viewModel.onProductQuantityChange(value!);
                          },
                          textValue: (int value) {
                            return '$value';
                          },
                          isEmpty: () => false,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ProductDescriptionSection(
          productDetails: product.productDetailInfo(),
          productDetail: product,
        )
      ],
    );
  }
}

class ColorBatchWidget extends StatelessWidget {
  final ProductDetailDTO product;
  Function get onTapped =>
      (ProductBatch productBatch, ProductBatchShowCaseProvider viewModel) {
        viewModel.updateSelectedBatch(productBatch);
      };

  const ColorBatchWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

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
                            onTap: (() => onTapped(colorBatch, viewModel)),
                          ),
                        ],
                      )
                    : GestureDetector(
                        onTap: (() => onTapped(colorBatch, viewModel)),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: HexColor(colorBatch.color!.colorCode),
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: viewModel.isBatchSelected(colorBatch)
                                  ? Theme.of(context).primaryColor
                                  : ProductInfoCaseColor.kBoxBorderColor,
                            ),
                          ),
                          child: Center(
                              child: LatoTextView(
                            label: colorBatch.color?.name ?? "",
                          )),
                        ),
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
  final ProductDetailDTO product;
  Function get onTapped =>
      (SizeInfo sizeInfo, ProductBatchShowCaseProvider viewModel) {
        viewModel.updateSelectedSizeInfo(sizeInfo);
      };

  const SizesBatchWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ProductBatchShowCaseProvider>(context);
    return Center(
      child: SizedBox(
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
                  return ProductSizeBatchWidget(
                    sizeInfo: sizeInfo,
                    isSelected: viewModel.isSizeInfoSelected(sizeInfo),
                    isStockAvailable: viewModel.isSizeStockAvailable(sizeInfo),
                    onTapped: (() => onTapped(sizeInfo, viewModel)),
                  );
                })),
          ],
        ),
      ),
    );
  }
}

class ProductSizeBatchWidget extends StatelessWidget {
  final bool isSelected;
  final bool isStockAvailable;
  final Function()? onTapped;

  const ProductSizeBatchWidget({
    Key? key,
    required this.sizeInfo,
    this.isSelected = false,
    this.isStockAvailable = true,
    required this.onTapped,
  }) : super(key: key);

  final SizeInfo sizeInfo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        width: 50,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: isStockAvailable
              ? ProductInfoCaseColor.kBoxColorActive
              : ProductInfoCaseColor.kBoxColorUnActive,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: isSelected
                ? Theme.of(context).primaryColor
                : ProductInfoCaseColor.kBoxBorderColor,
          ),
        ),
        child: Center(
            child: LatoTextView(
          label: sizeInfo.display,
        )),
      ),
    );
  }
}
