// import 'package:extended_image/extended_image.dart';
// import 'package:flutter/material.dart';
// import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
// import 'package:rameshclothhouse/presentation/components/product_card_widget.dart';
// import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
// import 'package:rameshclothhouse/presentation/features/productDetails/views/product_showcase_section.dart';
// import 'package:stacked/stacked.dart';

// class ProductDescriptionSection
//     extends ViewModelWidget<ProductDetailsViewModel> {
//   const ProductDescriptionSection({Key? key})
//       : super(key: key, reactive: false);

//   @override
//   Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
//     return ProductCardWidget(
//       cardLabel: "Description",
//       builder: (context) {
//         // if (viewModel.productToShow!.isDescriptionsAvailable) {
//         //   return ListView.builder(
//         //     shrinkWrap: true,
//         //     physics: const NeverScrollableScrollPhysics(),
//         //     itemBuilder: (context, index) {
//         //       final description = viewModel.productToShow!.descriptions![index];
//         //       return Column(
//         //         mainAxisAlignment: MainAxisAlignment.start,
//         //         crossAxisAlignment: CrossAxisAlignment.start,
//         //         children: [
//         //           LatoTextView(
//         //             label: '${description.description}',
//         //             isHtml: true,
//         //             fontType: FontType.normal,
//         //             fontSize: 14.0,
//         //           ),
//         //           if (description.imageUrl != null) verticalSpaceRegular,
//         //           if (description.imageUrl != null)
//         //             ExtendedImage.network(
//         //               description.imageUrl!,
//         //               cache: true,
//         //               width: screenWidth(context),
//         //               fit: BoxFit.cover,
//         //             ),
//         //           verticalSpaceRegular,
//         //         ],
//         //       );
//         //     },
//         //     itemCount: viewModel.productToShow!.descriptions!.length,
//         //   );
//         // }
//         return LatoTextView(
//           label: '<p>${viewModel.product?.description}</p>',
//           isHtml: true,
//         );
//       },
//     );
//   }
// }
