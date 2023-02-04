import 'package:flutter/material.dart';
import 'package:rameshclothhouse/domain_layer/models/entities.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';

import '../../../config/ui_helper.dart';

class ProductDescriptionSection extends StatelessWidget {
  final List<ProductDetail> productDetails;
  final ProductDetailDTO productDetail;

  const ProductDescriptionSection(
      {Key? key, required this.productDetails, required this.productDetail})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    if (productDetails.isEmpty) {
      return Container();
    }
    return Column(
      children: [
        SizedBox(
          height: 00,
          width: 200,
          child: LatoTextView(
            label: productDetail.summary,
            isHtml: true,
          ),
        ),
        ProductDescriptionExpandableWidget(
          cardLabel: "Product Details",
          builder: (context) {
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final description = productDetails[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child: LatoTextView(
                          label: description.display,
                          fontType: AppTextType.DisplayMedium,
                          fontSize: 14.0,
                          color: ProductInfoCaseColor.kTitleColor,
                        ),
                      ),
                      horizontalSpaceRegular,
                      LatoTextView(
                        label: description.value,
                        fontType: AppTextType.DisplayMedium,
                        fontSize: 14.0,
                        wordWrapp: true,
                      ),
                      verticalSpaceRegular,
                    ],
                  ),
                );
              },
              itemCount: productDetails.length,
            );
          },
        ),
        Container(
          height: 20,
        )
      ],
    );
  }
}

class ProductDescriptionExpandableWidget extends StatefulWidget {
  final String cardLabel;
  final Widget Function(BuildContext context)? builder;

  const ProductDescriptionExpandableWidget({
    Key? key,
    required this.cardLabel,
    this.builder,
  }) : super(key: key);

  @override
  State<ProductDescriptionExpandableWidget> createState() =>
      _ProductDescriptionExpandableWidgetState();
}

class _ProductDescriptionExpandableWidgetState
    extends State<ProductDescriptionExpandableWidget> {
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
      decoration: const BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(
                  width: 1, color: ProductInfoCaseColor.kBoxBorderColor))),
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
