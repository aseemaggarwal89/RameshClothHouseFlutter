import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rameshclothhouse/gen/assets.gen.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';

import '../../domain_layer/domain_layer.dart';

class ProductAttributeDropDown extends StatelessWidget {
  final List<ProductAttributes> attributes;
  final ProductAttributes? value;
  final String label;
  final Function(ProductAttributes?)? onChanged;
  final double? height;
  final double? textSize;
  final Icon? icon;
  final bool isExpanded;
  final bool isDense;

  const ProductAttributeDropDown({
    Key? key,
    required this.attributes,
    required this.label,
    this.onChanged,
    this.value,
    this.height = 40.0,
    this.textSize = 14.0,
    this.icon,
    this.isExpanded = true,
    this.isDense = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (attributes.isEmpty) {
      return const SizedBox.shrink();
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(
          color: const Color.fromRGBO(222, 222, 235, 1.0),
        ),
      ),
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LatoTextView(
            label: '$label :',
            fontSize: textSize,
            fontType: AppTextType.TitleLarge,
            textAlignment: TextAlign.center,
          ),
          horizontalSpaceSmall,
          DropdownButton<ProductAttributes>(
            value: value,
            items: attributes
                .map(
                  (data) => DropdownMenuItem(
                    value: data,
                    child: LatoTextView(
                      label: data.value,
                      fontSize: textSize,
                      fontType: AppTextType.TitleMedium,
                    ),
                  ),
                )
                .toList(),
            onChanged: onChanged,
            underline: const SizedBox.shrink(),
            icon: icon ??
                SvgPicture.asset(
                  Assets.icon.caretDown,
                  width: 20.0,
                  height: 20.0,
                ),
            isExpanded: isExpanded,
            isDense: isDense,
          ),
        ],
      ),
    );
  }
}
