import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rameshclothhouse/presentation/components/carousel_item_widget.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import 'package:rameshclothhouse/presentation/features/productDetails/views/product_showcase_thumbnail_widget.dart';

import '../../../../domain_layer/domain_layer.dart';

class ProductShowCaseSection extends StatelessWidget {
  final ProductDetailDTO product;

  ProductShowCaseSection({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ProductShowCaseSectionProvider>(context);
    viewModel.updateImageUrls(product);
    return Column(
      children: [
        verticalSpaceRegular,
        CarouselSlider.builder(
          carouselController: viewModel.controller,
          options: CarouselOptions(
            height: screenHeightPercentage(context, percentage: 0.6),
            viewportFraction: 1.0,
            autoPlay: false,
            initialPage: viewModel.index,
            autoPlayCurve: Curves.fastLinearToSlowEaseIn,
            onPageChanged: (index, reason) => viewModel.onChangeIndex(index),
          ),
          itemBuilder: (context, index, realIndex) {
            var media = viewModel.productImageUrls.length > index
                ? viewModel.productImageUrls[index]
                : null;

            return CarouselItemWidget(
              url: media ?? '',
              isVideo: false,
            );
          },
          itemCount: viewModel.productImageUrls.length,
        ),
        dividerWithoutColor,
        Container(
          height: 80.0,
          color: Colors.white,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 16.0),
          child: NotificationListener(
            onNotification: (state) {
              return true;
            },
            child: NotificationListener(
              onNotification: (state) {
                return true;
              },
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final media = viewModel.productImageUrls[index];
                  return ProductShowcaseThumbnailWidget(
                    thumbnailUrl: media,
                    type: MediaType.IMAGE,
                    isSelected: viewModel.index == index,
                    onTap: () {
                      viewModel.controller.animateToPage(index);
                    },
                  );
                },
                itemCount: viewModel.productImageUrls.length,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// class ProductShowCaseSection extends ViewModelWidget<ProductDetailsViewModel> {
//   final _controller = CarouselController();
//   final ProductDetailDTO product;

//   ProductShowCaseSection({Key? key, required this.product})
//       : super(key: key, reactive: true);

//   @override
//   Widget build(BuildContext context, ProductDetailsViewModel viewModel) {
//     return Column(
//       children: [
//         CarouselSlider.builder(
//           carouselController: _controller,
//           options: CarouselOptions(
//             height: screenHeightPercentage(context, percentage: 0.6),
//             viewportFraction: 1.0,
//             autoPlay: false,
//             initialPage: viewModel.index,
//             autoPlayCurve: Curves.fastLinearToSlowEaseIn,
//             onPageChanged: (index, reason) => viewModel.onChangeIndex(index),
//           ),
//           itemBuilder: (context, index, realIndex) {
//             var media = viewModel.imageUrls[index];

//             return CarouselItemWidget(
//               url: media,
//               isVideo: false,
//             );
//           },
//           itemCount: viewModel.imageUrls.length,
//         ),
//         dividerWithoutColor,
//         Container(
//           height: 80.0,
//           color: Colors.white,
//           alignment: Alignment.centerLeft,
//           padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 16.0),
//           child: NotificationListener(
//             onNotification: (state) {
//               return true;
//             },
//             child: NotificationListener(
//               onNotification: (state) {
//                 return true;
//               },
//               child: ListView.builder(
//                 shrinkWrap: true,
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, index) {
//                   final media = viewModel.imageUrls[index];
//                   return ProductShowcaseThumbnailWidget(
//                     thumbnailUrl: media,
//                     type: MediaType.IMAGE,
//                     isSelected: viewModel.index == index,
//                     onTap: () {
//                       _controller.animateToPage(index);
//                     },
//                   );
//                 },
//                 itemCount: viewModel.imageUrls.length,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

class ProductShowCaseSectionProvider with ChangeNotifier {
  List<String>? _imageUrls = [];
  final controller = CarouselController();

  ProductShowCaseSectionProvider();
  int _currentIndex = 0;

  int get index => _currentIndex;

  void onChangeIndex(int value) {
    _currentIndex = value;
    notifyListeners();
  }

  void updateImageUrls(ProductDetailDTO product) {
    if (product.images != null && product.images!.isNotEmpty) {
      _imageUrls = product.images;
    } else {
      _imageUrls = product.imageCover != null ? [product.imageCover!] : [];
    }
  }

  List<String> get productImageUrls {
    return _imageUrls ?? [];
  }
}
