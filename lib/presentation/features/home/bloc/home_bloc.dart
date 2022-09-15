// Home Screen Bloc
// Author: openflutterproject@gmail.com
// Date: 2020-02-06

import 'package:bloc/bloc.dart';
import 'package:rameshclothhouse/presentation/features/home/bloc/home_event.dart';
import '../../../../domain_layer/domain_layer.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  // final AddToFavoritesUseCase addToFavoritesUseCase;
  // final RemoveFromFavoritesUseCase removeFromFavoritesUseCase;
  final IProductUseCases getHomePageProductsUseCase;

  HomeBloc(this.getHomePageProductsUseCase) : super(HomeInitialState());

  // @override
  // Stream<HomeState> mapEventToState(HomeEvent event) async* {
  //   if (event is HomeLoadEvent) {
  //     if (state is HomeInitialState) {
  //       HomeProductsResult results =
  //           await getHomePageProductsUseCase.execute(HomeProductParams());
  //       yield HomeLoadedState(
  //           salesProducts: results.salesProducts,
  //           newProducts: results.newProducts);
  //     } else if (state is HomeLoadedState) {
  //       yield state;
  //     }
  //   } else if (event is HomeAddToFavoriteEvent) {
  //     if (event.isFavorite) {
  //       await addToFavoritesUseCase
  //           .execute(FavoriteProduct(event.product, null));
  //     } else {
  //       await removeFromFavoritesUseCase.execute(
  //           RemoveFromFavoritesParams(FavoriteProduct(event.product, null)));
  //     }
  //     HomeProductsResult results =
  //         await getHomePageProductsUseCase.execute(HomeProductParams());
  //     yield HomeLoadedState(
  //         salesProducts: results.salesProducts,
  //         newProducts: results.newProducts);
  //   }
  // }
}
