import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/components/image_view.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';

import '../../../../domain_layer/domain_layer.dart';
import '../../../../domain_layer/utils/enum/product_view_type.dart';

class ProductItemView extends StatelessWidget {
  final ProductDTO product;
  final ValueChanged<String> onItemClicked;
  final ProductViewType viewType;
  final bool showViewButton;
  final double elevation;
  final FilterDTO? brand;
  const ProductItemView(
      {Key? key,
      required this.product,
      this.brand,
      required this.onItemClicked,
      this.viewType = ProductViewType.GRID,
      this.showViewButton = false,
      this.elevation = 1.5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ProductItemWidgetColor.backgroundColor,
      elevation: elevation,
      child: InkWell(
        onTap: () => onItemClicked(product.uniqueId),
        child: Container(
          margin: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 6,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    color: ProductItemWidgetColor.kcDarkishGreen,
                    child: ImageView(
                      radius: 0,
                      url:
                          product.imageCover ?? 'https://picsum.photos/200/300',
                      alignment: Alignment.topCenter,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              buildProductInfo(
                product,
                viewType,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProductInfo(ProductDTO productDto, ProductViewType type) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSpaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: LatoTextView(
                  label: '${productDto.name}\n',
                  color: ProductItemWidgetColor.kcBlack74,
                  maxLine: 2,
                  fontType: AppTextType.Medium,
                  textOverflow: TextOverflow.ellipsis,
                  textAlignment: TextAlign.center,
                ),
              ),
              horizontalSpaceSmall,
            ],
          ),
          if (brand != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: LatoTextView(
                    label: '${brand!.name}\n',
                    color: ProductItemWidgetColor.kcBlack74,
                    maxLine: 2,
                    textOverflow: TextOverflow.ellipsis,
                    textAlignment: TextAlign.center,
                  ),
                ),
                horizontalSpaceSmall,
              ],
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LatoTextView(
                label: formatAmountWithSymbol(productDto.price),
                fontType: AppTextType.Medium,
                color: ProductItemWidgetColor.kcBlack74,
              ),
              horizontalSpaceSmall,
              LatoTextView(
                label: formatAmountWithSymbol(productDto.discountPrice),
                color: ProductItemWidgetColor.kcBlack34,
                decoration: TextDecoration.lineThrough,
              ),
              horizontalSpaceSmall,
              LatoTextView(
                label: '${productDto.discountPercent}% Off',
                fontType: AppTextType.Medium,
                color: ProductItemWidgetColor.kcDarkishGreen,
              )
            ],
          ),
        ],
      ),
    );
  }
}
