// import 'package:flutter/material.dart';
// import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
// import 'package:rameshclothhouse/presentation/components/price_widget.dart';
// import 'package:rameshclothhouse/presentation/components/product_card_widget.dart';
// import 'package:rameshclothhouse/presentation/config/ui_helper.dart';

// enum PaymentMode { COD, ONLINE, BOTH }

// class PriceBreakupWidget extends StatelessWidget {
//   final num mrp;
//   final num healofyPrice;
//   final num deliveryCharge;
//   final num finalPrice;
//   final num amountSaved;
//   final String label;
//   final PaymentMode paymentMode;
//   final int cartItemCount;
//   final Color kcTotalAmountBgColor;

//   const PriceBreakupWidget({
//     Key? key,
//     required this.mrp,
//     required this.healofyPrice,
//     required this.deliveryCharge,
//     required this.finalPrice,
//     required this.amountSaved,
//     required this.cartItemCount,
//     this.paymentMode = PaymentMode.COD,
//     this.label = 'Price Breakup Details',
//     this.kcTotalAmountBgColor = Colors.white,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ProductCardWidget(
//       cardLabel: label,
//       builder: (context) {
//         return Container(
//           decoration: BoxDecoration(
//             border: Border.all(color: Color(0xFFFAFAFA), width: 1.0),
//             borderRadius: BorderRadius.circular(4.0),
//           ),
//           child: Column(
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     PriceWidget(
//                       label: LocaleKeys.priceBreakup_mrpLabel
//                           .plural(cartItemCount),
//                       value: formatAmountWithSymbol(mrp),
//                       valueColor: Colors.black12,
//                       labelColor: Colors.red,
//                     ),
//                     verticalSpaceSmall,
//                     PriceWidget(
//                       label: LocaleKeys.priceBreakup_healofyPriceLabel,
//                       value: formatAmountWithSymbol(healofyPrice),
//                       valueColor: const Color.fromRGBO(77, 150, 0, 1.0),
//                       labelColor: Colors.red,
//                     ),
//                     verticalSpaceSmall,
//                     PriceWidget(
//                       label: LocaleKeys.priceBreakup_deliveryChargeLabel,
//                       value: deliveryCharge > 0
//                           ? formatAmountWithSymbol(deliveryCharge)
//                           : 'Free!',
//                       valueColor:
//                           deliveryCharge > 0 ? kcBlackTwo : kcGrassyGreen,
//                       labelColor: Colors.red,
//                     ),
//                     verticalSpaceRegular,
//                   ],
//                 ),
//               ),
//               const DottedLine(
//                 dashColor: kcWarmGrey,
//                 dashGapLength: 5,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   color: kcTotalAmountBgColor,
//                 ),
//                 padding: const EdgeInsets.all(12.0),
//                 child: Column(
//                   children: [
//                     PriceWidget(
//                       label: LocaleKeys.priceBreakup_totalAmountLabel,
//                       value: formatAmountWithSymbol(finalPrice),
//                       valueColor: kcBlackTwo,
//                       labelColor: kcBlackTwo,
//                     ),
//                     verticalSpaceSmall,
//                     if (paymentMode == PaymentMode.COD)
//                       Row(
//                         children: const [
//                           Expanded(
//                             child: LatoTextView(
//                               label: LocaleKeys.priceBreakup_codMessageLabel,
//                               fontSize: 10.0,
//                               color: Colors.orangeAccent,
//                               fontType: FontType.BOLD,
//                             ),
//                           )
//                         ],
//                       )
//                   ],
//                 ),
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.greenAccent.withOpacity(0.2),
//                 ),
//                 padding: const EdgeInsets.all(12.0),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: LatoTextView(
//                         label: LocaleKeys.priceBreakup_totalSavingLabel
//                             .tr(args: ['$amountSaved']),
//                         fontSize: 15.0,
//                         textAlignment: TextAlign.center,
//                         color: Colors.greenAccent,
//                         fontType: FontType.BOLD,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
