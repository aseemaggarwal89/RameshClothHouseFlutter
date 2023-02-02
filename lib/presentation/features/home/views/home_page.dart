// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'package:rameshclothhouse/domain_layer/domain_layer.dart';
import 'package:rameshclothhouse/gen/assets.gen.dart';
import 'package:rameshclothhouse/presentation/components/app_error_widget.dart';
import 'package:rameshclothhouse/presentation/components/lato_text_view.dart';
import 'package:rameshclothhouse/presentation/config/app_colors.dart';
import 'package:rameshclothhouse/presentation/config/app_router.dart';
import 'package:rameshclothhouse/presentation/config/section_keys.dart';
import 'package:rameshclothhouse/presentation/config/ui_helper.dart';
import 'package:rameshclothhouse/presentation/features/home/views/home_filter.dart';
import 'package:rameshclothhouse/presentation/features/home/views/product_item_widget.dart';
import 'package:rameshclothhouse/presentation/components/responsive.dart';

import '../bloc_filter/home_filter_bloc.dart';
import '../home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<HomeBloc>(
        create: ((context) => HomeBloc()),
      ),
      BlocProvider<HomeFilterBloc>(
        create: ((context) => HomeFilterBloc(BlocProvider.of<HomeBloc>(context))
          ..add(GetFiltersEvent())),
      ),
    ], child: HomeScreenWrapper(key: kHomeScreenWrapperKey));
  }
}

class HomeScreenWrapper extends StatelessWidget {
  final PagedChildBuilderDelegate<ProductDTO> pageBuilder =
      PagedChildBuilderDelegate<ProductDTO>(
    itemBuilder: (context, item, index) => ProductItemView(
      key: ValueKey(item.uniqueId),
      elevation: 0,
      product: item,
      brand: item.brandId != null
          ? BlocProvider.of<HomeFilterBloc>(context)
              .filter(item.brandId!, FilterType.brand)
          : null,
      onItemClicked: (id) {
        AppNavigator.navigateToProductDetail(item.uniqueId);
      },
    ),
    firstPageProgressIndicatorBuilder: (context) => buildLoading(),
    firstPageErrorIndicatorBuilder: (context) => AppErrorWidget(
      title: 'No Item Found',
      subTitle: '',
      tryAgain: () => BlocProvider.of<HomeBloc>(context)
          .pagingController
          .retryLastFailedRequest(),
    ),
    newPageProgressIndicatorBuilder: (_) => buildLoading(),
    // noItemsFoundIndicatorBuilder: (_) => NoItemsFoundIndicator(),
    // noMoreItemsIndicatorBuilder: (_) => NoMoreItemsIndicator(),
  );
  final filterView = const HomeFilterView(key: kFilterHomeSectionKey);
  final homePageHeaderView = const HomePageHeaderView(
    key: kHomePageHeaderViewKey,
  );
  late final HomeDesktopView _homeDesktopView;
  late final HomePageMobileView _homePageMobileView;
  HomeScreenWrapper({
    Key? key,
  }) : super(key: key) {
    _homeDesktopView = HomeDesktopView(
      key: kHomeDesktopViewKey,
      filterView: filterView,
      pageBuilder: pageBuilder,
      homePageHeaderView: homePageHeaderView,
    );
    _homePageMobileView = HomePageMobileView(
      key: kHomePageMobileViewKey,
      pageBuilder: pageBuilder,
      filterView: filterView,
      homePageHeaderView: homePageHeaderView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<OpenFilterViewProvider>(
      create: (context) => OpenFilterViewProvider(),
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
  final HomePageHeaderView homePageHeaderView;

  const HomeDesktopView({
    Key? key,
    required this.filterView,
    required this.pageBuilder,
    required this.homePageHeaderView,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        height: screenHeight(context),
        child:
            Consumer<OpenFilterViewProvider>(builder: ((context, value, child) {
          return Column(
            children: [
              homePageHeaderView,
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
          );
        })),
      ),
    );
  }
}

class HomePageMobileView extends StatelessWidget {
  final PagedChildBuilderDelegate<ProductDTO> pageBuilder;
  final HomeFilterView filterView;
  final HomePageHeaderView homePageHeaderView;
  const HomePageMobileView({
    Key? key,
    required this.pageBuilder,
    required this.filterView,
    required this.homePageHeaderView,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<OpenFilterViewProvider>(builder: ((context, value, child) {
      return SingleChildScrollView(
        child: SizedBox(
          height: screenHeight(context),
          child: Column(
            children: [
              homePageHeaderView,
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
      buildWhen: (previous, current) => current is HomeProductResult,
      builder: (context, state) {
        HomeBloc bloc = BlocProvider.of<HomeBloc>(context);
        if (bloc.pagingController.itemList?.isEmpty ??
            true && bloc.pagingController.error != null) {
          return Container();
        }

        return Container(
          height: 70,
          margin: const EdgeInsets.all(10),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Provider.of<OpenFilterViewProvider>(context, listen: false)
                      .tooglefilterViewState();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Consumer<OpenFilterViewProvider>(
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
                  key: ObjectKey(item),
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

class OpenFilterViewProvider extends ChangeNotifier {
  var _isFilterViewOpen = false;
  bool get isFilterViewOpen {
    return _isFilterViewOpen;
  }

  void tooglefilterViewState() {
    _isFilterViewOpen = !_isFilterViewOpen;
    notifyListeners();
  }
}
