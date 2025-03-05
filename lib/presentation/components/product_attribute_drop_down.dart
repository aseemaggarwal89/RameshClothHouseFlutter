import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';

class ProductAttributeDropDown<T> extends StatefulWidget {
  final List<T> attributes;
  final Function(T?)? onChanged;
  final Icon? icon;
  final bool isExpanded;
  final bool isDense;
  final String Function(T) textValue;
  final T? Function() selectedItem;
  final bool Function() isEmpty;
  final String hintText;
  final String? Function(T?)? validator;
  final AutovalidateMode? autovalidateMode;

  const ProductAttributeDropDown({
    Key? key,
    required this.attributes,
    required this.textValue,
    this.onChanged,
    this.icon,
    this.isExpanded = true,
    this.isDense = true,
    this.hintText = '',
    required this.selectedItem,
    required this.isEmpty,
    this.validator,
    this.autovalidateMode,
  }) : super(key: key);

  @override
  State<ProductAttributeDropDown<T>> createState() =>
      _ProductAttributeDropDownState<T>();
}

class _ProductAttributeDropDownState<T>
    extends State<ProductAttributeDropDown<T>> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField<T>(
          
          hint: LatoTextView(label: widget.hintText),
          autovalidateMode: widget.autovalidateMode,
          value: widget.selectedItem(),
          items: widget.attributes
              .map(
                (data) => DropdownMenuItem(
                  value: data,
                  child: LatoTextView(
                    label: widget.textValue(data),
                    fontSize: 16,
                    fontType: AppTextType.DisplayMedium,
                  ),
                ),
              )
              .toList(),
          onChanged: ((value) {
            if (widget.onChanged != null) {
              setState(() {
                widget.onChanged!(value);
              });
            }
          }),
          validator: (value) {
            if (widget.validator != null) {
              return widget.validator!(value);
            }
            return null;
          },
          // underline: const SizedBox.shrink(),
          // icon: Padding(
          //   padding: const EdgeInsets.all(5.0),
          //   child: widget.icon ??
          //       SvgPicture.asset(
          //         Assets.icon.caretDown,
          //         width: 15.0,
          //         height: 15.0,
          //       ),
          // ),
          isExpanded: widget.isExpanded,
          isDense: widget.isDense,
        ),
      ),
    );
  }
}
