// ignore_for_file: library_private_types_in_public_api

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'package:rameshclothhouse/domain_layer/domain_layer.dart';
import 'package:rameshclothhouse/gen/assets.gen.dart';
import 'package:rameshclothhouse/presentation/components/app_controller.dart';
import 'package:rameshclothhouse/presentation/components/app_error_widget.dart';
import 'package:rameshclothhouse/presentation/components/desktop_nar_bar.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/components/menu_drawer.dart';
import 'package:rameshclothhouse/presentation/components/mobile_nav_bar.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';
import 'package:rameshclothhouse/presentation/config/section_keys.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import 'package:rameshclothhouse/presentation/features/home/views/home_filter.dart';
import 'package:rameshclothhouse/presentation/features/home/views/product_item_widget.dart';
import 'package:rameshclothhouse/presentation/components/progress_indicator_widget.dart';
import 'package:rameshclothhouse/presentation/components/responsive.dart';
import 'package:rameshclothhouse/presentation/components/top_nav_bar.dart';
import 'package:rameshclothhouse/presentation/features/routes.gr.dart';

import '../bloc_filter/home_filter_bloc.dart';
import '../home.dart';

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
        ], child: HomeScreenWrapper(key: key)));
  }
}

class HomeScreenWrapper extends StatelessWidget {
  final PagedChildBuilderDelegate<ProductDTO> pageBuilder =
      PagedChildBuilderDelegate<ProductDTO>(
    itemBuilder: (context, item, index) => ProductItemView(
      elevation: 0,
      product: item,
      brand: item.brandId != null
          ? BlocProvider.of<HomeFilterBloc>(context)
              .filter(item.brandId!, FilterType.brand)
          : null,
      onItemClicked: (id) {
        AutoRouter.of(context).push(ProductDetailScreenRoute(
          productId: item.uniqueId,
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
  late HomeDesktopView _homeDesktopView;
  late HomePageMobileView _homePageMobileView;
  HomeScreenWrapper({
    Key? key,
  }) : super(key: key) {
    _homeDesktopView =
        HomeDesktopView(filterView: filterView, pageBuilder: pageBuilder);
    _homePageMobileView = HomePageMobileView(
      pageBuilder: pageBuilder,
      filterView: filterView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ToogleFilterView>(
      create: (context) => ToogleFilterView(),
      child: Responsive(
        key: key,
        mobile: _homePageMobileView,
        desktop: _homeDesktopView,
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
    return Consumer<ToogleFilterView>(builder: ((context, value, child) {
      return SingleChildScrollView(
        child: SizedBox(
          height: screenHeight(context),
          child: Column(
            children: [
              const HomePageHeaderView(),
              verticalSpaceSmall,
              Expanded(
                child: Row(
                  children: [
                    if (value.isFilterViewOpen)
                      Expanded(
                        flex: 2,
                        child: filterView,
                      ),
                    Expanded(
                      flex: 8,
                      child: CustomScrollView(
                        slivers: <Widget>[
                          PagedSliverGrid<int, ProductDTO>(
                            pagingController: BlocProvider.of<HomeBloc>(context)
                                .pagingController,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 0.82,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              crossAxisCount: 4,
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
          ),
        ),
      );
    }));
  }
}

class HomePageMobileView extends StatelessWidget {
  final PagedChildBuilderDelegate<ProductDTO> pageBuilder;
  final HomeFilterView filterView;

  const HomePageMobileView({
    Key? key,
    required this.pageBuilder,
    required this.filterView,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ToogleFilterView>(builder: ((context, value, child) {
      return SingleChildScrollView(
        child: SizedBox(
          height: screenHeight(context),
          child: Column(
            children: [
              const HomePageHeaderView(),
              if (value.isFilterViewOpen)
                Expanded(
                  flex: 2,
                  child: filterView,
                ),
              verticalSpaceSmall,
              Expanded(
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
                        crossAxisCount: 2,
                      ),
                      builderDelegate: pageBuilder,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }));
  }
}

class HomePageHeaderView extends StatelessWidget {
  const HomePageHeaderView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        HomeBloc bloc = BlocProvider.of<HomeBloc>(context);
        if (bloc.pagingController.itemList?.isEmpty ??
            true && bloc.pagingController.error != null) {
          return Container();
        }

        return Container(
          height: 70,
          margin: EdgeInsets.all(10),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Provider.of<ToogleFilterView>(context, listen: false)
                      .tooglefilterViewState();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Consumer<ToogleFilterView>(
                    builder: (context, value, _) => value.isFilterViewOpen
                        ? Assets.images.icCancle.image(
                            height: 20,
                            fit: BoxFit.fill,
                            color: CommonColors.bodyText1,
                          )
                        : Assets.images.filter.image(
                            height: 30,
                            fit: BoxFit.fill,
                            color: CommonColors.bodyText1),
                  ),
                ),
              ),
              const LatoTextView(
                label: "Filters",
                fontType: AppTextType.TitleMedium,
              ),
              horizontalSpaceSmall,
              divider(width: 1, height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: BlocBuilder<HomeBloc, HomeState>(
                  buildWhen: ((previous, current) =>
                      current is HomeProductResult),
                  builder: (context, state) {
                    HomeBloc bloc = BlocProvider.of<HomeBloc>(context);
                    return LatoTextView(
                      label: bloc.productResults == 0
                          ? ''
                          : '${bloc.productResults} Products',
                      fontType: AppTextType.TitleMedium,
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SortByDropDownView(),
              ),
            ],
          ),
        );
      },
    );
  }
}

class SortByDropDownView extends StatelessWidget {
  const SortByDropDownView({Key? key}) : super(key: key);

// Initial Selected Value
  final items = const [
    SortBy.CuratedForYou,
    SortBy.Newest,
    SortBy.PriceAsce,
    SortBy.PriceDecen,
    SortBy.Ratings,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: HomeScreenColor.borderColor,
              width: 1.5,
            )),
        child: BlocBuilder<HomeBloc, HomeState>(
          buildWhen: ((previous, current) => current is HomeSortByResult),
          builder: (context, state) {
            return DropdownButton(
              underline: Container(),
              borderRadius: BorderRadius.circular(4),
              // Initial Value
              value: BlocProvider.of<HomeBloc>(context).sortBy,
              focusColor: Colors.white,
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
                BlocProvider.of<HomeBloc>(context)
                    .add(ApplySortByEvent(newValue!));
              },
            );
          },
        ),
      ),
    );
  }
}

class ToogleFilterView extends ChangeNotifier {
  var _isFilterViewOpen = false;
  bool get isFilterViewOpen {
    return _isFilterViewOpen;
  }

  void tooglefilterViewState() {
    _isFilterViewOpen = !_isFilterViewOpen;
    notifyListeners();
  }
}
