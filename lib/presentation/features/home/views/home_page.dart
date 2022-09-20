// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:rameshclothhouse/domain_layer/domain_layer.dart';
import 'package:rameshclothhouse/presentation/components/app_controller.dart';
import 'package:rameshclothhouse/presentation/components/app_error_widget.dart';
import 'package:rameshclothhouse/presentation/components/desktop_nar_bar.dart';
import 'package:rameshclothhouse/presentation/components/menu_drawer.dart';
import 'package:rameshclothhouse/presentation/components/mobile_nav_bar.dart';
import 'package:rameshclothhouse/presentation/features/home/bloc_filter/home_filter.dart';
import 'package:rameshclothhouse/presentation/features/home/views/product_item_widget.dart';
import 'package:rameshclothhouse/presentation/components/progress_indicator_widget.dart';
import 'package:rameshclothhouse/presentation/components/responsive.dart';
import 'package:rameshclothhouse/presentation/components/top_nav_bar.dart';

import '../bloc_filter/home_filter_bloc.dart';
import '../home.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<String> menuItems = ['Home', 'Shop', 'About', 'Contact Us'];

  @override
  Widget build(BuildContext context) {
    // HomeBloc homeBloc = HomeBloc();

    return Controller(
        drawer: Responsive.isMobile(context)
            ? AppDrawer(menuItems: menuItems, selectedItem: 'Home')
            : null,
        desktopNavBar: DesktopAppBar(
            title: 'Home',
            child: TopNavBar(menuItems: menuItems, selectedItem: 'Home')),
        mobileNavBar: ControllerAppBar(title: 'Home'),
        child: MultiBlocProvider(providers: [
          BlocProvider<HomeBloc>(
            create: ((context) => HomeBloc()),
          ),
          BlocProvider<HomeFilterBloc>(
            create: ((context) =>
                HomeFilterBloc(BlocProvider.of<HomeBloc>(context))),
          ),
        ], child: HomeScreenWrapper()));
  }
}

class HomeScreenWrapper extends StatelessWidget {
  final PagedChildBuilderDelegate<ProductDTO> pageBuilder =
      PagedChildBuilderDelegate<ProductDTO>(
    itemBuilder: (context, item, index) => ProductItemView(
      product: item,
      onItemClicked: (id) {},
    ),
    firstPageProgressIndicatorBuilder: (context) =>
        const ProgressIndicatorWidget(),
    firstPageErrorIndicatorBuilder: (context) => AppErrorWidget(
      title: 'No Item Found',
      subTitle: '',
      tryAgain: () => BlocProvider.of<HomeBloc>(context)
          .pagingController
          .retryLastFailedRequest(),
    ),
    newPageProgressIndicatorBuilder: (_) =>
        const Center(child: CircularProgressIndicator()),
    // noItemsFoundIndicatorBuilder: (_) => NoItemsFoundIndicator(),
    // noMoreItemsIndicatorBuilder: (_) => NoMoreItemsIndicator(),
  );

  HomeScreenWrapper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      key: key,
      mobile: HomePageMobileView(pageBuilder: pageBuilder),
      desktop: HomeDesktopView(pageBuilder: pageBuilder),
    );
  }
}

class HomeDesktopView extends StatelessWidget {
  final PagedChildBuilderDelegate<ProductDTO> pageBuilder;

  const HomeDesktopView({
    Key? key,
    required this.pageBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: buildFilters(context),
        ),
        Expanded(
          flex: 7,
          child: CustomScrollView(
            slivers: <Widget>[
              PagedSliverGrid<int, ProductDTO>(
                pagingController:
                    BlocProvider.of<HomeBloc>(context).pagingController,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.82,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                ),
                builderDelegate: pageBuilder,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildFilters(BuildContext context) {
    return const HomeFilterView();
  }
}

class HomePageMobileView extends StatelessWidget {
  final PagedChildBuilderDelegate<ProductDTO> pageBuilder;

  const HomePageMobileView({
    Key? key,
    required this.pageBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        PagedSliverGrid<int, ProductDTO>(
          pagingController: BlocProvider.of<HomeBloc>(context).pagingController,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.82,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
          ),
          builderDelegate: pageBuilder,
        ),
      ],
    );
  }
}

// class ProductCatalogGridView extends StatelessWidget {
//   final List<ProductDTO?>? catalogs;
//   final EdgeInsetsGeometry? padding;
//   final ValueChanged<String> onItemClicked;
//   final bool isScrollable;
//   const ProductCatalogGridView({
//     Key? key,
//     required this.catalogs,
//     required this.onItemClicked,
//     this.padding,
//     this.isScrollable = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     if (catalogs == null || catalogs!.isEmpty) {
//       return const SizedBox.shrink();
//     }
//     return GridView.builder(
//       shrinkWrap: true,
//       primary: false,
//       physics: isScrollable
//           ? const BouncingScrollPhysics(
//               parent: AlwaysScrollableScrollPhysics(),
//             )
//           : const NeverScrollableScrollPhysics(
//               parent: AlwaysScrollableScrollPhysics(),
//             ),
//       padding: padding,
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2, childAspectRatio: 0.62),
//       itemBuilder: (context, index) {
//         final catalog = catalogs![index];
//         if (catalog == null) {
//           return const SizedBox.shrink();
//         }
//         return ProductItemView(
//           product: catalog,
//           onItemClicked: onItemClicked,
//         );
//       },
//       itemCount: catalogs?.length,
//     );
//   }
// }

// ignore: must_be_immutable
// class HomeDesktopPage extends StatefulWidget {
//   final PagingController<int, ProductDTO> pagingController =
//       PagingController(firstPageKey: 1);
//   late StreamSubscription blocListingStateSubscription;

//   HomeDesktopPage({Key? key}) : super(key: key);

//   @override
//   // ignore: library_private_types_in_public_api
//   _HomeDesktopPageState createState() => _HomeDesktopPageState();
// }

// class _HomeDesktopPageState extends State<HomeDesktopPage> {
//   late HomeBloc _bloc;

//   @override
//   void dispose() {
//     widget.pagingController.dispose();
//     widget.blocListingStateSubscription.cancel();
//     _bloc.dispose();
//     super.dispose();
//   }

//   @override
//   void initState() {
//     _bloc = BlocProvider.of<HomeBloc>(context);
//     super.initState();
//   }

  // @override
  // Widget build(BuildContext context) {
  //   return BlocBuilder<HomeBloc, HomeState>(
  //       builder: (BuildContext context, HomeState state) {
  //     return BlocListener<HomeBloc, HomeState>(
  //       listener: (context, state) {
  //         if (state is HomeErrorState) {
  //           ScaffoldMessenger.of(context).showSnackBar(
  //             SnackBar(
  //               content: Text(state.message),
  //             ),
  //           );
  //         }
  //       },
  //       child: BlocBuilder<HomeBloc, HomeState>(
  //         builder: (context, state) {
  //           switch (state.runtimeType) {
  //             case HomeInitialState:
  //               return _buildLoading();
  //             case HomeLoadingState:
  //               return _buildLoading();
  //             case HomeSuccessState:
  //               return ProductCatalogGridView(
  //                 catalogs: (state as HomeSuccessState).products,
  //                 onItemClicked: (id) {},
  //               );
  //               return _buildCard(context);
  //             case HomeErrorState:
  //               return LatoTextView(label: (state as HomeErrorState).message);
  //             default:
  //               return Container();
  //           }
  //         },
  //       ),
  //     );
  //   });
  // }

//   Widget _buildCard(BuildContext context) {
//     return CustomScrollView(
//       slivers: <Widget>[
//         PagedSliverGrid<int, ProductDTO>(
//           pagingController: widget.pagingController,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             childAspectRatio: 0.82,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//             crossAxisCount: 3,
//           ),
//           builderDelegate: PagedChildBuilderDelegate<ProductDTO>(
//             itemBuilder: (context, item, index) => ProductItemView(
//               product: item,
//               onItemClicked: (id) {},
//             ),
//           ),
//         ),
//       ],
//     );
//   }

  // Widget _buildLoading() => const Center(child: CircularProgressIndicator());
// }

// class HomePageDesktopView extends StatelessWidget {
//   const HomePageDesktopView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<HomeBloc, HomeState>(
//         builder: (BuildContext context, HomeState state) {
//       return BlocListener<HomeBloc, HomeState>(
//         listener: (context, state) {
//           if (state is HomeErrorState) {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 content: Text(state.message),
//               ),
//             );
//           }
//         },
//         child: BlocBuilder<HomeBloc, HomeState>(
//           builder: (context, state) {
//             switch (state.runtimeType) {
//               case HomeInitialState:
//                 return _buildLoading();
//               case HomeLoadingState:
//                 return _buildLoading();
//               case HomeSuccessState:
//                 return _buildCard(
//                     context, (state as HomeSuccessState).products);
//               default:
//                 return Container();
//             }
//           },
//         ),
//       );
//     });
//   }

//   Widget _buildCard(BuildContext context, List<ProductDTO> products) {
//     return ListView.builder(
//       itemCount: products.length,
//       itemBuilder: (context, index) {
//         return Container(
//           margin: const EdgeInsets.all(8.0),
//           child: Card(
//             child: Container(
//               margin: const EdgeInsets.all(8.0),
//               child: Column(
//                 children: <Widget>[
//                   Text("Name: ${products[index].name}"),
//                   Text("Description: ${products[index].description}"),
//                   Text("Price: ${products[index].price}"),
//                   Text("Brand: ${products[index].uniqueId}"),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildLoading() => const Center(child: CircularProgressIndicator());
// }