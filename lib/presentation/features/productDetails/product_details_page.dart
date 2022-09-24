import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/components/app_controller.dart';
import 'package:rameshclothhouse/presentation/components/desktop_nar_bar.dart';
import 'package:rameshclothhouse/presentation/components/mobile_nav_bar.dart';
import 'package:rameshclothhouse/presentation/components/top_nav_bar.dart';
import 'package:rameshclothhouse/presentation/config/section_keys.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import 'package:rameshclothhouse/presentation/features/productDetails/views/product_description_section.dart';
import 'package:rameshclothhouse/presentation/features/productDetails/views/product_info_section.dart';
import 'package:rameshclothhouse/presentation/features/productDetails/views/product_showcase_section.dart';
import 'package:stacked/stacked.dart';

import '../../../domain_layer/domain_layer.dart';

class ProductDetailScreen extends StatelessWidget {
  final ProductDTO product;
  final BrandDTO? brand;
  final String? id;

  const ProductDetailScreen({
    Key? key,
    required this.product,
    this.brand,
    @PathParam('id') this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> menuItems = ['Home', 'Shop', 'About', 'Contact Us'];

    return ViewModelBuilder<ProductDetailsViewModel>.reactive(
      viewModelBuilder: () => ProductDetailsViewModel(product),
      builder: (context, model, child) => Controller(
        desktopNavBar: DesktopAppBar(
            title: 'Product Detail',
            child: TopNavBar(menuItems: menuItems, selectedItem: 'Home')),
        mobileNavBar: ControllerAppBar(title: 'Product Detail'),
        child: SingleChildScrollView(
          primary: true,
          child: Column(
            children: [
              ProductShowCaseSection(key: showCaseSectionKey, product: product),
              dividerWithoutColor,
              ProductInfoSection(key: infoSectionKey),
              verticalSpaceRegular,
              verticalSpaceRegular,
              ProductDescriptionSection(key: descriptionSectionKey),

              // ProductSimilarSection(key: similarSectionKey),
              // verticalSpaceRegular,
              // ProductDescriptionSection(key: descriptionSectionKey),
              // verticalSpaceRegular,
              // PriceBreakupSection(key: breakupSectionKey),
              // verticalSpaceRegular,
              // ProductFeaturedVideoSection(key: featuredVideoSectionKey),
              // verticalSpaceRegular,
              // ProductDetailsReviewSection(key: detailsReviewSectionKey),
              // verticalSpaceRegular,
              // ProductRecommendedSection(key: recommendedSectionKey),
              // verticalSpaceRegular,
              // ProductCategorySection(key: categorySectionKey),
              // verticalSpaceRegular,
              // ProductRecentSection(key: recentSectionKey),
              // verticalSpaceRegular,
            ],
          ),
        ),
      ),
    );
  }
}
