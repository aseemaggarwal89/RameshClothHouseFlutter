// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rameshclothhouse/presentation/features/home/bloc_filter/filter.dart';
import 'package:rameshclothhouse/presentation/features/home/bloc_filter/home_filter_state.dart';
import 'package:rameshclothhouse/presentation/features/home/view_models.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../domain_layer/domain_layer.dart';
import '../bloc/home_bloc.dart';
import '../home.dart';

part 'home_filter_event.dart';

class HomeFilterBloc extends Bloc<HomeFilterEvent, HomeFilterState>
    implements BrandUseCaseInjection, CategoryUseCaseInjection {
  final _loadedFilters = BehaviorSubject<FilterViewModel>();
  HomeBloc homeBloc;
  HomeFilterBloc(this.homeBloc) : super(HomeFilterInitialState()) {
    on<GetFiltersEvent>(_onGetFiltersEvent);
    on<FilterCheckboxTappedEvent>(_filterCheckBoxTapped);
  }

  void _onGetFiltersEvent(
      GetFiltersEvent event, Emitter<HomeFilterState> emit) async {
    emit(HomeFilterLoadingState());

    try {
      final categories = await getCategoryDataUseCase.fetchAllCategories();
      final brands = await getBrandDataUseCase.fetchAllBrandData();
      if (loadedFilters != null) {
        _loadedFilters.value = FilterViewModel(brands, categories,
            selectedFilters: loadedFilters?.selectedFilters);
      } else {
        _loadedFilters.value = FilterViewModel(brands, categories);
      }

      emit(HomeFilterLoadedState(_loadedFilters.value));
    } on NetworkExceptions catch (failure) {
      emit(HomeFilteErrorState(
          message: NetworkExceptions.getErrorMessage(failure)));
    }
  }

  List<FilterDTO> activeFilters(FilterType type) {
    return loadedFilters?.activeFilters(type) ?? [];
  }

  bool isSelected(FilterDTO filter) {
    return loadedFilters?.isSelected(filter) ?? false;
  }

  void _filterCheckBoxTapped(
      FilterCheckboxTappedEvent event, Emitter<HomeFilterState> emit) {
    loadedFilters?.updateFilter(event.selected, event.filter);

    emit(HomeSelectedFiltersState([..._loadedFilters.value.selectedFilters]));
    homeBloc.add(ApplyFiltersEvent(_loadedFilters.value.selectedFilters));
  }

  FilterViewModel? get loadedFilters {
    return _loadedFilters.hasValue ? _loadedFilters.value : null;
  }

  FilterDTO? filter(String uniqueId, FilterType type) {
    return loadedFilters?.filter(uniqueId, type);
  }

  void dispose() {}
}
