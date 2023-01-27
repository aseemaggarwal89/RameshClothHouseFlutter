// Home Screen Bloc

import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:rameshclothhouse/presentation/features/home/bloc/home_event.dart';
import 'package:rxdart/rxdart.dart';
import '../../../../domain_layer/domain_layer.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState>
    implements ProductUseCaseInjection, CacheInjection {
  final PagingController<int, ProductDTO> pagingController =
      PagingController(firstPageKey: 1);

  HomeBloc() : super(HomeInitialState()) {
    _onPageRequest.stream
        .flatMap(_fetchProductList)
        .listen(_onNewListingStateController.add)
        .addTo(_subscriptions);

    _onNewListingStateController.listen((listingState) {
      pagingController.value = PagingState(
        nextPageKey: listingState.nextPageKey,
        error: listingState.error,
        itemList: listingState.itemList?.toList(),
      );
    }).addTo(_subscriptions);

    pagingController.addPageRequestListener((pageKey) {
      _onPageRequest.add(pageKey);
    });

    on<ApplyFiltersEvent>(_applyFilterAndUpdateProductList);
    on<ApplySortByEvent>(_applySortByAndUpdateProductList);
    on<UpdateNumberOfProductsEvent>(_updateProductResults);

    _onSelectedFilters.stream
        .flatMap((value) => _fetchProductList(0))
        .listen(_onNewListingStateController.add)
        .addTo(_subscriptions);

    _onSelectedSortBy.stream
        .flatMap((value) => _fetchProductList(0))
        .listen(_onNewListingStateController.add)
        .addTo(_subscriptions);
  }

  static const int _pageSize = 5;

  final _onPageRequest = StreamController<int>();

  final _onSelectedFilters = BehaviorSubject<List<FilterDTO>>();

  final _onSelectedSortBy =
      BehaviorSubject<SortBy>.seeded(SortBy.CuratedForYou);
  final _onProductResultsBy = BehaviorSubject<int>.seeded(0);

  final _subscriptions = CompositeSubscription();

  final _onNewListingStateController =
      BehaviorSubject<HomePageListingState>.seeded(HomePageListingState());

  Stream<HomePageListingState> _fetchProductList(
    int pageKey,
  ) async* {
    final lastListingState = _onNewListingStateController.value;
    try {
      if (pageKey == 0) {
        add(UpdateNumberOfProductsEvent());
      }

      final newItems = await getProductDataUseCase.fetchProductData(
        pageKey,
        _pageSize,
        _onSelectedFilters.hasValue ? _onSelectedFilters.value : null,
        _onSelectedSortBy.hasValue ? _onSelectedSortBy.value : null,
      );
      final isLastPage = newItems.length < _pageSize;
      final nextPageKey = isLastPage ? null : pageKey + 1;
      Set<ProductDTO> products = pageKey == 0
          ? <ProductDTO>{...newItems}
          : <ProductDTO>{...lastListingState.itemList ?? [], ...newItems};

      yield HomePageListingState(
        error: null,
        nextPageKey: nextPageKey,
        itemList: products,
      );
    } catch (e) {
      yield HomePageListingState(
        error: e,
        nextPageKey: lastListingState.nextPageKey,
        itemList: lastListingState.itemList,
      );
    }
  }

  void _applyFilterAndUpdateProductList(
    ApplyFiltersEvent event,
    Emitter<HomeState> emit,
  ) async {
    _onSelectedFilters.add([...event.filters]);
  }

  void _applySortByAndUpdateProductList(
    ApplySortByEvent event,
    Emitter<HomeState> emit,
  ) async {
    _onSelectedSortBy.add(event.sortBy);
    emit(HomeSortByResult(event.sortBy));
  }

  void _updateProductResults(
    UpdateNumberOfProductsEvent event,
    Emitter<HomeState> emit,
  ) async {
    try {
      final resultCount = await getProductDataUseCase.fetchProductDataCount(
        _onSelectedFilters.hasValue ? _onSelectedFilters.value : null,
      );
      _onProductResultsBy.value = resultCount;
      emit(HomeProductResult(resultCount));
    } catch (e) {
      _onProductResultsBy.value = 0;
      emit(HomeProductResult(0, error: e));
    }
  }

  SortBy get sortBy {
    return _onSelectedSortBy.hasValue ? _onSelectedSortBy.value : SortBy.Newest;
  }

  int get productResults =>
      _onProductResultsBy.hasValue ? _onProductResultsBy.value : 0;

  void dispose() {
    _onNewListingStateController.close();
    _subscriptions.dispose();
    _onPageRequest.close();
    pagingController.dispose();
  }
}
