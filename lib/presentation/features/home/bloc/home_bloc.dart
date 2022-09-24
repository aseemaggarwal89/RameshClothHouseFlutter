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
        itemList: listingState.itemList,
      );
    }).addTo(_subscriptions);

    pagingController.addPageRequestListener((pageKey) {
      _onPageRequest.add(pageKey);
    });

    on<ApplyFiltersEvent>(_applyFilterAndUpdateProductList);

    _onFilterUpdated.stream
        .flatMap((value) => _filterUpdateFetchProductList(0, value))
        .listen(_onNewListingStateController.add)
        .addTo(_subscriptions);
  }

  static const int _pageSize = 5;

  final _onPageRequest = StreamController<int>();

  final _onFilterUpdated = BehaviorSubject<List<FilterDTO>>();

  final _subscriptions = CompositeSubscription();

  final _onNewListingStateController =
      BehaviorSubject<HomePageListingState>.seeded(HomePageListingState());

  Stream<HomePageListingState> _fetchProductList(int pageKey) async* {
    final lastListingState = _onNewListingStateController.value;
    try {
      final newItems = await getProductDataUseCase.fetchProductData(
        pageKey,
        _pageSize,
        _onFilterUpdated.hasValue ? _onFilterUpdated.value : null,
      );
      final isLastPage = newItems.length < _pageSize;
      final nextPageKey = isLastPage ? null : pageKey + 1;
      yield HomePageListingState(
        error: null,
        nextPageKey: nextPageKey,
        itemList: [...lastListingState.itemList ?? [], ...newItems],
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
    _onFilterUpdated.add(event.filters);
  }

  Stream<HomePageListingState> _filterUpdateFetchProductList(
    int pageKey,
    List<FilterDTO> filter,
  ) async* {
    final lastListingState = _onNewListingStateController.value;
    try {
      final newItems = await getProductDataUseCase.fetchProductData(
        pageKey,
        _pageSize,
        filter,
      );
      final isLastPage = newItems.length < _pageSize;
      final nextPageKey = isLastPage ? null : pageKey + 1;
      yield HomePageListingState(
        error: null,
        nextPageKey: nextPageKey,
        itemList: newItems,
      );
    } catch (e) {
      yield HomePageListingState(
        error: e,
        nextPageKey: lastListingState.nextPageKey,
        itemList: lastListingState.itemList,
      );
    }
  }

  void dispose() {
    _onNewListingStateController.close();
    _subscriptions.dispose();
    _onPageRequest.close();
    pagingController.dispose();
  }
}
