import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';

import '../../domain_layer/domain_layer.dart';
import '../config/ui_helper.dart';

class ProductDetailDisplay extends StatelessWidget {
  const ProductDetailDisplay({
    Key? key,
    required this.description,
  }) : super(key: key);

  final ProductDescriptionDetail description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          LatoTextView(
            label: '${description.order}',
            fontType: AppTextType.DisplayMedium,
            fontSize: 14.0,
            color: ProductInfoCaseColor.kTitleColor,
          ),
          horizontalSpaceRegular,
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
  }
}