import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/components/product_attribute_drop_down.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../domain_layer/domain_layer.dart';

class ProductInfoSection extends StatelessWidget {
  final ProductDetailDTO product;

  const ProductInfoSection({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ProductInfoSectionProvider>(context);
    viewModel.updatedProductDetail(product);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
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
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpaceRegular,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LatoTextView(
                          label: product.name,
                          // color: ProductInfoCaseColor.kcBlackTwo,
                          fontType: AppTextType.DisplayMedium,
                        ),
                        if (product.brandId != null) verticalSpaceSmall,
                        if (product.brandId != null)
                          LatoTextView(
                            label: product.brandId!.name,
                            // color: ProductInfoCaseColor.kcBlackTwo,
                            fontType: AppTextType.TitleLarge,
                          ),
                        if (product.subCategoryId != null &&
                            product.categoryId != null &&
                            product.categoryId!.subCategoryFromCategory(
                                    product.subCategoryId!) !=
                                null)
                          verticalSpaceSmall,
                        if (product.subCategoryId != null &&
                            product.categoryId != null &&
                            product.categoryId!.subCategoryFromCategory(
                                    product.subCategoryId!) !=
                                null)
                          LatoTextView(
                            label: product.categoryId!
                                .subCategoryFromCategory(
                                    product.subCategoryId!)!
                                .name,
                            // color: ProductInfoCaseColor.kcBlackTwo,
                            fontType: AppTextType.TitleMedium,
                          ),
                        if (product.ratingsAverage != null) verticalSpaceSmall,
                        if (product.ratingsAverage != null)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const LatoTextView(
                                label: 'Ratings:',
                                fontType: AppTextType.TitleMedium,
                                // color: ProductInfoCaseColor.kcBrownishGrey,
                              ),
                              horizontalSpaceSmall,
                              LatoTextView(
                                label: '${product.ratingsAverage}',
                                fontType: AppTextType.TitleMedium,
                                // color: ProductInfoCaseColor.kcBrownishGrey,
                              ),
                              const Icon(
                                Icons.star_rounded,
                                color: ProductInfoCaseColor.kcGoldenRod,
                              ),
                              const SizedBox(
                                width: 12.0,
                              ),
                            ],
                          )
                      ],
                    ),
                  ),
                  // horizontalSpaceRegular,
                  // Expanded(
                  //   flex: 1,
                  //   child: OutlinedButton.icon(
                  //     style: OutlinedButton.styleFrom(
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(8.0),
                  //         side: const BorderSide(
                  //           color: Color.fromRGBO(222, 222, 235, 1.0),
                  //           width: 1.0,
                  //         ),
                  //       ),
                  //       fixedSize: const Size(67, 28),
                  //     ),
                  //     onPressed: () {
                  //       // viewModel.downloadFile(
                  //       //     product.shareImages?.referralReview?.imageUrl);
                  //     },
                  //     icon: SvgPicture.asset(R.ASSETS_ICON_SHARE_SVG),
                  //     label: const LatoTextView(
                  //       label: 'Share',
                  //       color: Colors.black,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              verticalSpaceSmall,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (product.discountPrice == null)
                    LatoTextView(
                      label: formatAmountWithSymbol(product.price),
                      fontType: AppTextType.TitleMedium,
                    ),
                  if (product.discountPrice != null &&
                      product.discountPrice! > 0)
                    LatoTextView(
                      label: formatAmountWithSymbol(product.price),
                      fontType: AppTextType.TitleMedium,
                      decoration: TextDecoration.lineThrough,
                    ),
                  horizontalSpaceTiny,
                  if (product.discountPrice != null &&
                      product.discountPrice! > 0)
                    LatoTextView(
                      label: formatAmountWithSymbol(product.discountPrice),
                      fontType: AppTextType.TitleMedium,
                    ),
                  horizontalSpaceSmall,
                  if (product.discountPrice != null &&
                      product.discountPrice! > 0)
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 6.0),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(46, 142, 46, 1.0),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      child: LatoTextView(
                        label:
                            'YOU SAVE: ${formatAmountWithSymbol(product.discountPercent)}',
                        color: Colors.white,
                        fontType: AppTextType.Medium,
                      ),
                    )
                ],
              ),
            ],
          ),
        ),
        dividerWithoutColor,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: StreamBuilder<ProductAttributes>(
                      stream: viewModel.productQuantity,
                      initialData: viewModel.defaultQuantityAttributes(),
                      builder: (context, snapshot) {
                        return ProductAttributeDropDown(
                          value: snapshot.data,
                          isExpanded: false,
                          isDense: true,
                          attributes: viewModel.getQuantityAttributes(),
                          label: 'QTY',
                          onChanged: (value) {
                            viewModel.onProductQuantityChange(value!);
                          },
                        );
                      },
                    ),
                  ),
                  horizontalSpaceRegular,
                  Expanded(
                    flex: 1,
                    child: StreamBuilder<ProductAttributes>(
                      stream: viewModel.productSize,
                      initialData: viewModel.defaultSizeAttributes(),
                      builder: (context, snapshot) {
                        return ProductAttributeDropDown(
                          value: snapshot.data,
                          attributes: viewModel.sizeAttributes,
                          label: 'SIZE',
                          isExpanded: false,
                          isDense: true,
                          onChanged: viewModel.onProductSizeChange,
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class ProductInfoSectionProvider with ChangeNotifier {
  ProductDetailDTO? _productDetailsResponse;
  ProductDetailDTO? get productDetailsResponse => _productDetailsResponse;

  ProductInfoSectionProvider();

  final _productQuantityController = BehaviorSubject<ProductAttributes>();

  Stream<ProductAttributes>? get productQuantity =>
      _productQuantityController.stream;

  final _productSizeController = BehaviorSubject<ProductAttributes>();

  Stream<ProductAttributes>? get productSize => _productSizeController.stream;

  num get quantity => _quantity;
  num _quantity = 5;

  ProductShowCaseSectionProvider() {}

  void updatedProductDetail(ProductDetailDTO product) {
    _productDetailsResponse = product;
  }

  void onProductQuantityChange(ProductAttributes value) {
    _productQuantityController.sink.add(value);
  }

  void onProductSizeChange(ProductAttributes? value) {
    if (value != null) {
      _productSizeController.sink.add(value);
    }
  }

  ProductAttributes? defaultSizeAttributes() {
    return sizeAttributes.isNotEmpty ? sizeAttributes.first : null;
  }

  ProductAttributes? defaultQuantityAttributes() {
    if (_productDetailsResponse == null) {
      return null;
    }

    if (_productDetailsResponse!.productQualityType == QuantityType.Meter) {
      return const ProductAttributes('1');
    } else {
      return const ProductAttributes('1');
    }
  }

  List<ProductAttributes> getQuantityAttributes() {
    if (_productDetailsResponse == null) {
      return [];
    }

    if ((_productDetailsResponse?.quantity ?? 0) <= 0) {
      return [];
    }

    if (_productDetailsResponse!.productQualityType == QuantityType.Meter) {
      final selectedSizeAttribute = _productSizeController.hasValue
          ? _productSizeController.value
          : defaultSizeAttributes();
      final number = selectedSizeAttribute != null
          ? num.parse(selectedSizeAttribute.value)
          : 1;

      // int quantity = (_productDetailsResponse!.quantity / number) as int;
      return generateQuantityAttributes(
          _productDetailsResponse!.quantity.toInt());
    } else {
      return generateQuantityAttributes(
          _productDetailsResponse!.quantity.toInt());
    }
  }

  List<ProductAttributes> generateQuantityAttributes(int quantity) {
    return List.generate(
      quantity,
      (index) {
        return ProductAttributes(
          '${index + 1}',
          isAvailable: index + 1 <= quantity,
        );
      },
    );
  }

  List<ProductAttributes> get sizeAttributes {
    final sizeList = <ProductAttributes>[];
    final List<String>? availableSizes =
        _productDetailsResponse?.sizAttributesId?.size;
    final List<String> sizeNotAllowed =
        _productDetailsResponse?.sizeNotAllowed ?? [];

    if (availableSizes != null && availableSizes.isNotEmpty) {
      for (var element in availableSizes) {
        if (!sizeNotAllowed.contains(element)) {
          sizeList.add(
            ProductAttributes(
              element,
              isAvailable: true,
            ),
          );
        }
      }
    }
    return sizeList;
  }
}
