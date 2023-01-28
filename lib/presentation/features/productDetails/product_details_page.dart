import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:rameshclothhouse/presentation/components/app_controller.dart';
import 'package:rameshclothhouse/presentation/components/desktop_nar_bar.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/components/menu_drawer.dart';
import 'package:rameshclothhouse/presentation/components/mobile_nav_bar.dart';
import 'package:rameshclothhouse/presentation/components/responsive.dart';
import 'package:rameshclothhouse/presentation/components/top_nav_bar.dart';
import 'package:rameshclothhouse/presentation/config/section_keys.dart';
import 'package:rameshclothhouse/presentation/features/productDetails/bloc/product_detail_page_bloc.dart';
import 'package:rameshclothhouse/presentation/features/productDetails/views/product_info_section.dart';
import 'package:rameshclothhouse/presentation/features/productDetails/views/product_showcase_section.dart';

class ProductDetailScreen extends StatelessWidget {
  final String productId;

  const ProductDetailScreen({
    Key? key,
    @PathParam('id') required this.productId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> menuItems = ['Home', 'Shop', 'About', 'Contact Us'];

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductShowCaseSectionProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductInfoSectionProvider(),
        ),
        BlocProvider<ProductDetailPageBloc>(
          create: ((context) => ProductDetailPageBloc()),
        ),
      ],
      child: ProductDetailView(
        productId: productId,
        key: productDetailViewKey,
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
  _ProductDetailViewState createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  late ProductDetailPageBloc _bloc;

  @override
  void initState() {
    _bloc = BlocProvider.of<ProductDetailPageBloc>(context);
    _bloc.add(ProductDetailPageEvent.getProductDetail(
      widget.productId,
    ));
    super.initState();
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProductDetailPageBloc>(context);

    return BlocBuilder<ProductDetailPageBloc, ProductDetailPageState>(
        buildWhen: (previous, current) {
      return (current is Initial) ||
          (current is Loaded) ||
          (current is Loading) ||
          (current is LoadedError);
    }, builder: (BuildContext context, ProductDetailPageState state) {
      return state.map(
        initial: (value) => _buildLoading(),
        loading: (value) => _buildLoading(),
        loaded: (value) => _buidloaded(value),
        error: (value) =>
            LatoTextView(label: (state as LoadedError).errorMessage),
      );
    });
  }

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());

  Widget _buidloaded(Loaded state) => SingleChildScrollView(
        primary: true,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: ProductShowCaseSection(
                  key: showCaseSectionKey, product: state.product),
            ),
            Expanded(
              flex: 6,
              child: ProductInfoSection(
                key: infoSectionKey,
                product: state.product,
              ),
            )
          ],
        ),
      );
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
