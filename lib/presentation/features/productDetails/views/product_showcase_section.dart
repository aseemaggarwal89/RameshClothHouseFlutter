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
    final viewModel = Provider.of<ProductBatchShowCaseProvider>(context);
    viewModel.update(product);
    if (viewModel.selectedBatch == null &&
        (product.batches?.isNotEmpty ?? false)) {
      viewModel.updateSelectedBatch(product.batches!.first);
    }

    return viewModel.productImageUrls.isNotEmpty
        ? Column(
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
                      padding: const EdgeInsets.only(
                          top: 16.0, bottom: 16.0, left: 16.0),
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
                                viewModel.tappedOnIndex(index);
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
                        itemCount: viewModel.productImageUrls.length,
                        itemBuilder: (_, index, realIndex) {
                          var media = viewModel.productImageUrls[index];
                          return GestureDetector(
                            onTap: () async {
                              await showDialog(
                                  context: context,
                                  builder: (_) => ImageDialog(
                                        imageUrl: media,
                                      ));
                            },
                            child: CarouselItemWidget(
                              key: ValueKey(media),
                              url: media,
                              isVideo: false,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        : Container();
  }

  double viewHeight(BuildContext context) {
    return screenHeightPercentage(context, percentage: 0.8);
  }
}

class ProductBatchShowCaseProvider with ChangeNotifier {
  ProductDetailDTO product;
  ProductBatch? selectedBatch;
  SizeInfo? selectedSizeInfo;

  final _controller = CarouselController();

  ProductBatchShowCaseProvider(this.product);
  int _currentIndex = 0;

  int get index => _currentIndex;

  CarouselController get carouselController => _controller;

  void onChangeIndex(int value) {
    _currentIndex = value;
    notifyListeners();
  }

  void update(ProductDetailDTO product) {
    product = product;
  }

  void updateSelectedBatch(ProductBatch productBatch) {
    selectedBatch = productBatch;
    notifyListeners();
  }

  void updateSelectedSizeInfo(SizeInfo sizeInfo) {
    selectedSizeInfo = sizeInfo;
    notifyListeners();
  }

  void tappedOnIndex(int index) {
    _controller.animateToPage(index);
  }

  List<String> get productImageUrls {
    return selectedBatch?.images ?? product.images ?? [];
  }

  String? get currentImageUrl {
    if (_currentIndex < productImageUrls.length) {
      return productImageUrls[_currentIndex];
    }

    return null;
  }

  List<ProductBatch> get batchs {
    return product.batches ?? [];
  }

  bool isBatchAvailable() {
    return batchs.isNotEmpty;
  }

  bool isSelectedBatchStockNotAvailable() {
    return product.isStockAvailable &&
        isAnyBatchSelected() &&
        !isSelectedBatchStockAvailable();
  }

  bool isSelectedSizeStockNotAvailable() {
    if (selectedSizeInfo != null && product.isStockAvailable) {
      if (selectedBatch != null && selectedBatch!.isAvailable) {
        // ignore: iterable_contains_unrelated_type
        return (selectedBatch!.sizesNotAvailable ?? [])
            .contains(selectedSizeInfo!.uniqueId);
      }
    }

    return false;
  }

  bool isStockAvailable() {
    return product.isStockAvailable;
  }

  bool isBatchSelected(ProductBatch batch) {
    if (selectedBatch != null) {
      return selectedBatch == batch;
    }

    return false;
  }

  bool isSizeInfoSelected(SizeInfo sizeInfo) {
    if (selectedSizeInfo != null) {
      return selectedSizeInfo == sizeInfo;
    }

    return false;
  }

  bool isAnyBatchSelected() {
    return selectedBatch != null;
  }

  bool isSelectedBatchStockAvailable() {
    return selectedBatch?.isAvailable ?? false;
  }

  Attributes? get sizeAttributes {
    return product.sizAttributesId;
  }

  bool isSizeAttributesAvailable() {
    return product.sizAttributesId?.sizes?.isNotEmpty ?? false;
  }

  List<SizeInfo> get productSizes {
    return product.sizAttributesId?.sizes ?? [];
  }

  bool isSizeStockAvailable(SizeInfo sizeInfo) {
    if (selectedBatch != null && product.isStockAvailable) {
      ProductBatch batch = selectedBatch!;
      return batch.isAvailable &&
          !(batch.sizesNotAvailable ?? []).contains(sizeInfo.uniqueId);
    }

    return product.isStockAvailable;
  }
}

class ImageDialog extends StatelessWidget {
  final String imageUrl;

  const ImageDialog({required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
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
              imageProvider: NetworkImage(imageUrl),
              backgroundDecoration: const BoxDecoration(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
