// Home Screen Bloc

import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:rameshclothhouse/presentation/features/home/bloc/home_event.dart';
import 'package:rxdart/rxdart.dart';
import '../../../../domain_layer/domain_layer.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IProductUseCases getHomePageProductsUseCase;

  final PagingController<int, ProductDTO> pagingController =
      PagingController(firstPageKey: 1);

  HomeBloc()
      : getHomePageProductsUseCase = injector(),
        super(HomeInitialState()) {
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
  }

  static const int _pageSize = 5;

  final _onPageRequest = StreamController<int>();

  final _subscriptions = CompositeSubscription();

  final _onNewListingStateController =
      BehaviorSubject<HomePageListingState>.seeded(HomePageListingState());

  Stream<HomePageListingState> _fetchProductList(int pageKey) async* {
    final lastListingState = _onNewListingStateController.value;
    try {
      final newItems =
          await getHomePageProductsUseCase.fetchProductData(pageKey, _pageSize);
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

  void dispose() {
    _onNewListingStateController.close();
    _subscriptions.dispose();
    _onPageRequest.close();
    pagingController.dispose();
  }
}
