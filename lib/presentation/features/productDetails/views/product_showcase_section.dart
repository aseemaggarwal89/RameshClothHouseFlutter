import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rameshclothhouse/presentation/components/carousel_item_widget.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import 'package:rameshclothhouse/presentation/features/productDetails/views/product_showcase_thumbnail_widget.dart';
import 'package:photo_view/photo_view.dart' show PhotoView;

import '../../../../domain_layer/domain_layer.dart';

class ProductShowCaseSection extends StatelessWidget {
  final ProductDetailDTO product;
  const ProductShowCaseSection({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ProductShowCaseSectionProvider>(context);
    viewModel.updateImageUrls(product);
    return Column(
      children: [
        verticalSpaceRegular,
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 80.0,
                height: viewHeight(context),
                color: Colors.white,
                alignment: Alignment.centerLeft,
                padding:
                    const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 16.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    final media = viewModel.productImageUrls[index];
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ProductShowcaseThumbnailWidget(
                        key: ValueKey(media),
                        thumbnailUrl: media,
                        type: MediaType.IMAGE,
                        isSelected: viewModel.index == index,
                        onTap: () {
                          viewModel.tappedOnIned(index);
                        },
                      ),
                    );
                  },
                  itemCount: viewModel.productImageUrls.length,
                ),
              ),
              Expanded(
                child: CarouselSlider.builder(
                  carouselController: viewModel.carouselController,
                  options: CarouselOptions(
                    height: viewHeight(context),
                    viewportFraction: 1.0,
                    autoPlay: false,
                    initialPage: viewModel.index,
                    autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                    onPageChanged: (index, reason) =>
                        viewModel.onChangeIndex(index),
                  ),
                  itemBuilder: (_, index, realIndex) {
                    var media = viewModel.productImageUrls.length > index
                        ? viewModel.productImageUrls[index]
                        : null;

                    return GestureDetector(
                      onTap: () async {
                        await showDialog(
                            context: context,
                            builder: (_) => ImageDialog(
                                  productShowCaseSectionProvider: viewModel,
                                ));
                      },
                      child: CarouselItemWidget(
                        key: ValueKey(media),
                        url: media ?? '',
                        isVideo: false,
                      ),
                    );
                  },
                  itemCount: viewModel.productImageUrls.length,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  double viewHeight(BuildContext context) {
    return screenHeightPercentage(context, percentage: 0.8);
  }
}

class ProductShowCaseSectionProvider with ChangeNotifier {
  List<String> _imageUrls = [];
  final _controller = CarouselController();

  ProductShowCaseSectionProvider();
  int _currentIndex = 0;

  int get index => _currentIndex;

  CarouselController get carouselController => _controller;

  void onChangeIndex(int value) {
    _currentIndex = value;
    notifyListeners();
  }

  void updateImageUrls(ProductDetailDTO product) {
    if (product.images != null && product.images!.isNotEmpty) {
      _imageUrls = product.images!;
    } else {
      _imageUrls = product.imageCover != null ? [product.imageCover!] : [];
    }
  }

  void tappedOnIned(int index) {
    _controller.animateToPage(index);
  }

  List<String> get productImageUrls {
    return _imageUrls;
  }

  String get currentImageUrl {
    return _imageUrls[_currentIndex];
  }
}

class ImageDialog extends StatelessWidget {
  final ProductShowCaseSectionProvider productShowCaseSectionProvider;

  const ImageDialog({required this.productShowCaseSectionProvider, super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = productShowCaseSectionProvider;

    return Dialog(
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close_rounded),
                  color: Colors.redAccent,
                ),
              ],
            ),
          ),
          SizedBox(
            // width: 220,
            height: screenHeightPercentage(context, percentage: 0.6),
            child: PhotoView(
              imageProvider: NetworkImage(viewModel.currentImageUrl),
              backgroundDecoration: const BoxDecoration(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
