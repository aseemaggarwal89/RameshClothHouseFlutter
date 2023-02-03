import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rameshclothhouse/gen/assets.gen.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';

class ProductAttributeDropDown extends StatelessWidget {
  final List<int> attributes;
  final int? value;
  final Function(int?)? onChanged;
  final Icon? icon;
  final bool isExpanded;
  final bool isDense;

  const ProductAttributeDropDown({
    Key? key,
    required this.attributes,
    this.onChanged,
    this.value,
    this.icon,
    this.isExpanded = true,
    this.isDense = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(
          color: ProductInfoCaseColor.kBoxBorderColor,
        ),
      ),
      // height: height,
      child: Center(
        child: DropdownButton<int>(
          value: value,
          items: attributes
              .map(
                (data) => DropdownMenuItem(
                  value: data,
                  child: LatoTextView(
                    label: '$data',
                    fontSize: 16,
                    fontType: AppTextType.DisplayMedium,
                  ),
                ),
              )
              .toList(),
          onChanged: onChanged,
          underline: const SizedBox.shrink(),
          icon: Padding(
            padding: const EdgeInsets.all(5.0),
            child: icon ??
                SvgPicture.asset(
                  Assets.icon.caretDown,
                  width: 15.0,
                  height: 15.0,
                ),
          ),
          isExpanded: isExpanded,
          isDense: isDense,
        ),
      ),
    );
  }
}
