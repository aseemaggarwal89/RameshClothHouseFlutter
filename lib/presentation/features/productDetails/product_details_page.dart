import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:rameshclothhouse/domain_layer/models/entities.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/components/responsive.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import 'package:rameshclothhouse/presentation/features/productDetails/bloc/product_detail_page_bloc.dart';
import 'package:rameshclothhouse/presentation/features/productDetails/views/product_info_section.dart';
import 'package:rameshclothhouse/presentation/features/productDetails/views/product_showcase_section.dart';

@RoutePage()
class ProductDetailScreen extends StatelessWidget {
  final String productId;

  const ProductDetailScreen({
    Key? key,
    @PathParam('id') required this.productId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider<ProductDetailPageBloc>(
          create: ((context) => ProductDetailPageBloc()),
        ),
      ],
      child: ProductDetailView(
        productId: productId,
        key: ValueKey(productId),
      ),
    );
  }
}

class ProductDetailView extends StatefulWidget {
  final String productId;

  const ProductDetailView({
    Key? key,
    required this.productId,
  }) : super(key: key);

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  @override
  void initState() {
    BlocProvider.of<ProductDetailPageBloc>(context)
        .add(ProductDetailPageEvent.getProductDetail(
      widget.productId,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailPageBloc, ProductDetailPageState>(
        buildWhen: (previous, current) {
      return (current is Initial) ||
          (current is Loaded) ||
          (current is Loading) ||
          (current is LoadedError);
    }, builder: (BuildContext context, ProductDetailPageState state) {
      switch (state) {
        case Initial():
        case Loading():
          return buildLoading();
        case Loaded():
           return _buidloaded(state);
        case LoadedError(errorMessage: var errorMessage):
          return LatoTextView(label: errorMessage);
      }
      return Container();
    });
  }

  Widget _buidloaded(Loaded state) => MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => ProductBatchShowCaseProvider(state.product),
            ),
          ],
          builder: ((context, child) => Responsive(
                key: null,
                mobile: ProductDetailMobileView(
                  product: state.product,
                ),
                desktop: ProductDetailDesktopView(
                  product: state.product,
                ),
              )));
}

class ProductDetailDesktopView extends StatelessWidget {
  final ProductDetailDTO product;

  const ProductDetailDesktopView({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: true,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Showcase Product Images
          Expanded(
            flex: 4,
            child: ProductShowCaseSection(
                key: ObjectKey(product), product: product),
          ),
          horizontalSpaceLarge,
          Expanded(
            flex: 5,
            child: ProductInfoSection(
              key: ObjectKey(product),
              product: product,
            ),
          )
        ],
      ),
    );
  }
}

class ProductDetailMobileView extends StatelessWidget {
  final ProductDetailDTO product;

  const ProductDetailMobileView({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: true,
      child: SizedBox(
        height: 1.9 * screenHeight(context),
        child: Column(
          children: [
            // Showcase Product Images
            Expanded(
              flex: 3,
              child: ProductShowCaseMobileSection(
                  key: ObjectKey(product), product: product),
            ),
            Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ProductInfoSection(
                  key: ObjectKey(product),
                  product: product,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class ProductDetailScreen extends StatelessWidget {
//   final ProductDTO product;
//   final BrandDTO? brand;
//   final String? id;

//   const ProductDetailScreen({
//     Key? key,
//     required this.product,
//     this.brand,
//     @PathParam('id') this.id,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final List<String> menuItems = ['Home', 'Shop', 'About', 'Contact Us'];

//     return ViewModelBuilder<ProductDetailsViewModel>.reactive(
//       viewModelBuilder: () => ProductDetailsViewModel(product),
//       builder: (context, model, child) => Controller(
//         desktopNavBar: DesktopAppBar(
//             title: 'Product Detail', child: TopNavBar(menuItems: menuItems)),
//         mobileNavBar: ControllerAppBar(title: 'Product Detail'),
//         child: SingleChildScrollView(
//           primary: true,
//           child: Column(
//             children: [
              // ProductShowCaseSection(key: showCaseSectionKey, product: product),
//               dividerWithoutColor,
              // ProductInfoSection(key: infoSectionKey),
//               verticalSpaceRegular,
//               verticalSpaceRegular,
//               ProductDescriptionSection(key: descriptionSectionKey),

//               // ProductSimilarSection(key: similarSectionKey),
//               // verticalSpaceRegular,
//               // ProductDescriptionSection(key: descriptionSectionKey),
//               // verticalSpaceRegular,
//               // PriceBreakupSection(key: breakupSectionKey),
//               // verticalSpaceRegular,
//               // ProductFeaturedVideoSection(key: featuredVideoSectionKey),
//               // verticalSpaceRegular,
//               // ProductDetailsReviewSection(key: detailsReviewSectionKey),
//               // verticalSpaceRegular,
//               // ProductRecommendedSection(key: recommendedSectionKey),
//               // verticalSpaceRegular,
//               // ProductCategorySection(key: categorySectionKey),
//               // verticalSpaceRegular,
//               // ProductRecentSection(key: recentSectionKey),
//               // verticalSpaceRegular,
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
