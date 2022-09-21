// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rameshclothhouse/presentation/features/home/bloc_filter/filter.dart';
import 'package:rameshclothhouse/presentation/features/home/bloc_filter/home_filter_state.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../domain_layer/domain_layer.dart';
import '../bloc/home_bloc.dart';

part 'home_filter_event.dart';

@immutable
class FilterViewModel extends Equatable {
  final List<BrandDTO> brands;
  final List<CategoriesDTO> categories;
  final List<FilterDTO> _selectedFilters = [];

  FilterViewModel(
    this.brands,
    this.categories,
  );

  List<FilterDTO> activeFilters(FilterType type) {
    switch (type) {
      case FilterType.brand:
        return _activeBrands;
      case FilterType.category:
        return _activeCategories;
    }
  }

  bool isSelected(FilterDTO filter) {
    return _selectedFilters.contains(filter);
  }

  List<BrandDTO> get _activeBrands {
    return brands.where((element) => element.active).toList();
  }

  List<CategoriesDTO> get _activeCategories {
    return categories.where((element) => element.active).toList();
  }

  void updateFilter(bool isSelected, FilterDTO filter) {
    if (isSelected) {
      if (!_selectedFilters.contains(filter)) {
        _selectedFilters.add(filter);
      }
    } else {
      _selectedFilters.removeWhere((element) => element == filter);
    }
  }

  List<FilterDTO> get selectedFilters {
    return _selectedFilters;
  }

  @override
  List<Object?> get props => [
        brands.map((e) => e.uniqueId),
        categories.map((e) => e.uniqueId),
      ];
}

class HomeFilterBloc extends Bloc<HomeFilterEvent, HomeFilterState>
    implements BrandUseCaseInjection, CategoryUseCaseInjection {
  final _loadedFilters = BehaviorSubject<FilterViewModel>();
  final HomeBloc homeBloc;

  HomeFilterBloc(this.homeBloc) : super(HomeFilterInitialState()) {
    on<GetFiltersEvent>(_onGetFiltersEvent);
    on<FilterCheckboxTappedEvent>(_brandCheckBoxTapped);
  }

  void _onGetFiltersEvent(
      GetFiltersEvent event, Emitter<HomeFilterState> emit) async {
    emit(HomeFilterLoadingState());

    try {
      final categories = await getCategoryDataUseCase.fetchAllCategories();
      final brands = await getBrandDataUseCase.fetchAllBrandData();
      _loadedFilters.value = FilterViewModel(brands, categories);
      emit(HomeFilterLoadedState(_loadedFilters.value));
    } on NetworkExceptions catch (failure) {
      emit(HomeFilteErrorState(
          message: NetworkExceptions.getErrorMessage(failure)));
    }
  }

  List<FilterDTO> activeFilters(FilterType type) {
    return _loadedFilters.value.activeFilters(type);
  }

  bool isSelected(FilterDTO filter) {
    return _loadedFilters.value.isSelected(filter);
  }

  void _brandCheckBoxTapped(
      FilterCheckboxTappedEvent event, Emitter<HomeFilterState> emit) {
    _loadedFilters.value.updateFilter(event.selected, event.filter);
    homeBloc.onFilterUpdatedSink.add(_loadedFilters.value.selectedFilters);
    emit(HomeSelectedFilterState(event.filter, event.selected));
  }

  void dispose() {}
}
