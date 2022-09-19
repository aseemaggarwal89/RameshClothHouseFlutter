// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rameshclothhouse/presentation/features/home/bloc_filter/filter.dart';
import 'package:rameshclothhouse/presentation/features/home/bloc_filter/home_filter_state.dart';

import '../../../../domain_layer/domain_layer.dart';

part 'home_filter_event.dart';

class HomeFilterBloc extends Bloc<HomeFilterEvent, HomeFilterState> {
  final IBrandUseCases getBrandDataUseCase;

  HomeFilterBloc()
      : getBrandDataUseCase = injector(),
        super(HomeFilterInitialState()) {
    on<GetFiltersEvent>(_onGetBrandsEvent);
  }

  void _onGetBrandsEvent(
      GetFiltersEvent event, Emitter<HomeFilterState> emit) async {
    emit(HomeFilterLoadingState());
    try {
      final brands = await getBrandDataUseCase.fetchAllBrandData();
      emit(HomeFilterLoadedState(brands: brands));
    } on NetworkExceptions catch (failure) {
      emit(HomeFilteErrorState(
          message: NetworkExceptions.getErrorMessage(failure)));
    }
  }

  void dispose() {}
}
