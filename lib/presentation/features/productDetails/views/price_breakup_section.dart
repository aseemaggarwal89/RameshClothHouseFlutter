// import 'package:flutter/material.dart';
// import 'package:rameshclothhouse/presentation/features/productDetails/views/price_breakup_widget.dart';
// import 'package:rameshclothhouse/presentation/features/productDetails/views/product_showcase_section.dart';
// import 'package:stacked/stacked.dart';

// class PriceBreakupSection extends ViewModelWidget<ProductDetailsViewModel> {
//   const PriceBreakupSection({Key? key}) : super(key: key, reactive: true);

//   @override
//   Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
//     return PriceBreakupWidget(
//       label: LocaleKeys.productDetails_section_priceBreakupDetailsLabel,
//       mrp: viewModel.totalMrp,
//       cartItemCount: viewModel.productToShow?.productInCartQuantity ?? 0,
//       healofyPrice: viewModel.totalHealofyPrice,
//       deliveryCharge: viewModel.productToShow?.shippingCharges ?? 0,
//       finalPrice: viewModel.finalPrice,
//       amountSaved: viewModel.amountSaved,
//     );
//   }
// }
