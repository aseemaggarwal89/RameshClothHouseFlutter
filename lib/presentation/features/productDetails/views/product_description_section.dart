import 'package:flutter/material.dart';
import 'package:rameshclothhouse/domain_layer/models/entities.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import '../../../components/expandable_widget.dart';
import '../../../components/product_detail_display.dart';
import '../../../config/ui_helper.dart';

class ProductDescriptionSection extends StatelessWidget {
  final List<ProductDescriptionDetail> productDetails;
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

    var unescape = HtmlUnescape();
    var text = unescape.convert(productDetail.summary);

    return Column(
      children: [
        ExpandableWidget(
          cardLabel: "Product Details",
          builder: (context) {
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final description = productDetails[index];
                return ProductDetailDisplay(
                  description: description,
                );
              },
              itemCount: productDetails.length,
            );
          },
        ),
        Container(
          height: 20,
        ),
        verticalSpaceMedium,
        HtmlWidget(
          text,
          textStyle: Theme.of(context).textTheme.displayMedium,
          customStylesBuilder: ((element) {
            return null;
          
            // console.log(element);
          }),
        ),
      ],
    );
  }
}