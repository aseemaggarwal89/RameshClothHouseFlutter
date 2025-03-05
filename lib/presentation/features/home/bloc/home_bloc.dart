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
    implements GetAllUseCaseInjection {
  final _onPageRequest = StreamController<int>();
  final _onNewListingStateController =
      BehaviorSubject<PagingState<int, ProductDTO>>.seeded(PagingState());

  late PagingController<int, ProductDTO> pagingController;


  HomeBloc() : super(HomeInitialState()) {
    pagingController = PagingController(getNextPageKey: (state) {
      return (state.keys?.last ?? 0) + 1;
    }, fetchPage: (pageKey) async {
        return _fetchProductList(pageKey).map((pagingState) {
          return pagingState.items ?? [];
        }).first;
    });
    
    // _onPageRequest.stream
    //     .flatMap(_fetchProductList)
    //     .listen(_onNewListingStateController.add)
    //     .addTo(_subscriptions);

    _onNewListingStateController.listen((listingState) {
      pagingController.value = listingState;
    }).addTo(_subscriptions);
    
    // pagingController.addPageRequestListener((pageKey) {
    //   _onPageRequest.add(pageKey);
    // });

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

  final _onSelectedFilters = BehaviorSubject<List<FilterDTO>>();

  final _onSelectedSortBy =
      BehaviorSubject<SortBy>.seeded(SortBy.CuratedForYou);
  final _onProductResultsBy = BehaviorSubject<int>.seeded(0);

  final _subscriptions = CompositeSubscription();

  Stream<PagingState<int, ProductDTO>> _fetchProductList(
    int pageKey,
  ) async* {
    final lastListingState = _onNewListingStateController.value;
    try {
      if (pageKey == 0) {
        add(UpdateNumberOfProductsEvent());
      }

      final newItems = await getAllDataUseCase.fetchProductData(
        pageKey,
        _pageSize,
        _onSelectedFilters.hasValue ? _onSelectedFilters.value : null,
        _onSelectedSortBy.hasValue ? _onSelectedSortBy.value : null,
      );
      final isLastPage = newItems.length < _pageSize;
      // Set<ProductDTO> products = pageKey == 0
      //     ? <ProductDTO>{...newItems}
      //     : <ProductDTO>{...lastListingState.itemList ?? [], ...newItems};

      yield PagingState(
        pages: [...?lastListingState.pages, newItems],
        keys: [...?lastListingState.keys, pageKey],
        error: null,
        hasNextPage: !isLastPage,
      );
      // HomePageListingState(
      //   error: null,
      //   nextPageKey: nextPageKey,
      //   itemList: products,
      // );
    } catch (e) {
      yield lastListingState.copyWith(error: e, isLoading: false);
      // HomePageListingState(
      //   error: e,
      //   nextPageKey: lastListingState.nextPageKey,
      //   itemList: lastListingState.itemList,
      // );
    }
  }

  PagingState<int, ProductDTO> currentPageState() {
    return _onNewListingStateController.value;
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
      final resultCount = await getAllDataUseCase.fetchProductDataCount(
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
