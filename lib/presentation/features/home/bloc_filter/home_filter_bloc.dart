// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rameshclothhouse/presentation/features/home/bloc_filter/filter.dart';
import 'package:rameshclothhouse/presentation/features/home/bloc_filter/home_filter_state.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../domain_layer/domain_layer.dart';
import '../bloc/filter_view_model.dart';

part 'home_filter_event.dart';

class HomeFilterBloc extends Bloc<HomeFilterEvent, HomeFilterState> {
  final IBrandUseCases getBrandDataUseCase;
  final _loadedBrands = BehaviorSubject<List<BrandDTO>>();
  final _selectedBrands = BehaviorSubject<List<BrandDTO>>.seeded([]);
  Sink<SelectedFilters> filterSink;

  HomeFilterBloc(this.filterSink)
      : getBrandDataUseCase = injector(),
        super(HomeFilterInitialState()) {
    on<GetFiltersEvent>(_onGetBrandsEvent);
    on<BrandCheckboxTappedEvent>(_brandCheckBoxTapped);
  }

  void _onGetBrandsEvent(
      GetFiltersEvent event, Emitter<HomeFilterState> emit) async {
    emit(HomeFilterLoadingState());
    try {
      final brands = await getBrandDataUseCase.fetchAllBrandData();
      _loadedBrands.value = brands;
      emit(HomeFilterLoadedState(brands));
    } on NetworkExceptions catch (failure) {
      emit(HomeFilteErrorState(
          message: NetworkExceptions.getErrorMessage(failure)));
    }
  }

  List<BrandDTO> get activeBrands {
    return _loadedBrands.value.where((element) => element.active).toList();
  }

  bool isSelected(BrandDTO brand) {
    List<BrandDTO> brands = _selectedBrands.value;
    return brands.contains(brand);
  }

  void _brandCheckBoxTapped(
      BrandCheckboxTappedEvent event, Emitter<HomeFilterState> emit) {
    if (event.selected) {
      List<BrandDTO> brands = _selectedBrands.value;
      if (!brands.contains(event.brand)) {
        brands.add(event.brand);
      }
      _selectedBrands.value = brands;
    } else {
      _selectedBrands.value.removeWhere((element) => element == event.brand);
    }
    filterSink.add(SelectedFilters(_selectedBrands.value));
    emit(HomeSelectedFilterState(event.brand, event.selected));
  }

  void dispose() {}
}
