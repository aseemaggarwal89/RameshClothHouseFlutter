import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';

import '../config/app_colors.dart';
import '../config/ui_helper.dart';

class ExpandableWidget extends StatefulWidget {
  final String cardLabel;
  final Widget Function(BuildContext context)? builder;

  const ExpandableWidget({
    Key? key,
    required this.cardLabel,
    this.builder,
  }) : super(key: key);

  @override
  State<ExpandableWidget> createState() =>
      _ExpandableWidgetState();
}

class _ExpandableWidgetState
    extends State<ExpandableWidget> {
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
