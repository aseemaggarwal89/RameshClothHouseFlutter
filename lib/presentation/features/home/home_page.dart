// ignore_for_file: library_private_types_in_public_api


import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:rameshclothhouse/domain_layer/domain_layer.dart';
import 'package:rameshclothhouse/presentation/components/app_controller.dart';
import 'package:rameshclothhouse/presentation/components/app_error_widget.dart';
import 'package:rameshclothhouse/presentation/components/desktop_nar_bar.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/components/menu_drawer.dart';
import 'package:rameshclothhouse/presentation/components/mobile_nav_bar.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';
import 'package:rameshclothhouse/presentation/config/section_keys.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import 'package:rameshclothhouse/presentation/features/home/view_models.dart';
import 'package:rameshclothhouse/presentation/features/home/views/home_filter.dart';
import 'package:rameshclothhouse/presentation/features/home/views/product_item_widget.dart';
import 'package:rameshclothhouse/presentation/components/progress_indicator_widget.dart';
import 'package:rameshclothhouse/presentation/components/responsive.dart';
import 'package:rameshclothhouse/presentation/components/top_nav_bar.dart';
import 'package:rameshclothhouse/presentation/features/routes.gr.dart';

import 'bloc_filter/home_filter_bloc.dart';
import 'home.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<String> menuItems = ['Home', 'Shop', 'About', 'Contact Us'];

  @override
  Widget build(BuildContext context) {
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
      brand: item.brandId != null
          ? BlocProvider.of<HomeFilterBloc>(context)
              .filter(item.brandId!, FilterType.brand)
          : null,
      onItemClicked: (id) {
        AutoRouter.of(context).push(ProductDetailScreenRoute(
          product: item,
          brand: null,
          id: item.name,
        ));
      },
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
  final filterView = HomeFilterView(key: filterHomeSectionKey);

  HomeScreenWrapper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      key: key,
      mobile: HomePageMobileView(pageBuilder: pageBuilder),
      desktop: HomeDesktopView(
        pageBuilder: pageBuilder,
        filterView: filterView,
      ),
    );
  }
}

class HomeDesktopView extends StatelessWidget {
  final PagedChildBuilderDelegate<ProductDTO> pageBuilder;
  final HomeFilterView filterView;

  const HomeDesktopView({
    Key? key,
    required this.filterView,
    required this.pageBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 3,
                offset: const Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          height: 70,
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: LatoTextView(
                  label: 'Product Result Found:',
                  fontType: AppTextType.TitleMedium,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SortByDropDownView(),
              ),
            ],
          ),
        ),
        verticalSpaceSmall,
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: filterView,
              ),
              Expanded(
                flex: 8,
                child: CustomScrollView(
                  slivers: <Widget>[
                    PagedSliverGrid<int, ProductDTO>(
                      pagingController:
                          BlocProvider.of<HomeBloc>(context).pagingController,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
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
          ),
        ),
      ],
    );
  }
}

class SortByDropDownView extends StatefulWidget {
  const SortByDropDownView({Key? key}) : super(key: key);

  @override
  _SortByDropDownViewState createState() => _SortByDropDownViewState();
}

class _SortByDropDownViewState extends State<SortByDropDownView> {
// Initial Selected Value
  SortBy dropdownvalue = SortBy.Newest;

// List of items in our dropdown menu
  var items = [
    SortBy.Newest,
    SortBy.PriceAsce,
    SortBy.PriceDecen,
    SortBy.Ratings,
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const LatoTextView(
          label: 'Sort By',
          fontType: AppTextType.TitleLarge,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.0),
                border: Border.all(
                  color: HomeScreenColor.borderColor,
                  width: 1.5,
                )),
            child: DropdownButton(
              // Initial Value
              value: dropdownvalue,
              focusColor: Colors.transparent,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items.map((SortBy item) {
                return DropdownMenuItem(
                  value: item,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LatoTextView(
                      label: item.title,
                      fontType: AppTextType.Medium,
                    ),
                  ),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (SortBy? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
        ),
      ],
    );
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
