import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';

const Widget horizontalSpaceTiny = SizedBox(width: 4.0);
const Widget horizontalSpaceSmall = SizedBox(width: 8.0);
const Widget horizontalSpaceSmallRegular = SizedBox(width: 12.0);
const Widget horizontalSpaceRegular = SizedBox(width: 16.0);
const Widget horizontalSpaceMedium = SizedBox(width: 24.0);
const Widget horizontalSpaceLarge = SizedBox(width: 48.0);

const Widget dividerWithoutColor = SizedBox(height: 1.0);
const Widget verticalSpaceExtraTiny = SizedBox(height: 2.0);
const Widget verticalSpaceTiny = SizedBox(height: 4.0);
const Widget verticalSpaceSmall = SizedBox(height: 8.0);
const Widget verticalSpaceSmallRegular = SizedBox(height: 12.0);
const Widget verticalSpaceRegular = SizedBox(height: 16.0);
const Widget verticalSpaceMedium = SizedBox(height: 24.0);
const Widget verticalSpaceLarge = SizedBox(height: 48.0);

//size const
const double defaultPadding = 16.0;
const double defaultRadius = 16.0;

// Screen Size helpers
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenHeightPercentage(BuildContext context, {double percentage = 1}) =>
    screenHeight(context) * percentage;

double screenWidthPercentage(BuildContext context, {double percentage = 1}) =>
    screenWidth(context) * percentage;

//Divider Helpers
Widget divider(
        {required double width,
        double height = 1.5,
        Color color = CommonColors.kcPaleGrey}) =>
    Container(
      height: height,
      width: width,
      color: color,
    );

String formatAmountWithSymbol(dynamic amount) {
  return '\u0930 $amount';
}

Widget buildLoading() => const Center(child: CircularProgressIndicator());
