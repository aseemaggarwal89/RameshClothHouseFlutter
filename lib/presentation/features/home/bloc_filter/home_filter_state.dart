import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/features/home/view_models.dart';
import '../../../../domain_layer/domain_layer.dart';

@immutable
abstract class HomeFilterState extends Equatable {
  @override
  List<Object> get props => [];
}

@immutable
class HomeFilterInitialState extends HomeFilterState {
  @override
  String toString() => 'HomeFilterInitialState';
}

@immutable
class HomeFilterLoadingState extends HomeFilterState {
  @override
  String toString() => 'HomeLoadingFiltersState';
}

@immutable
class HomeFilterLoadedState extends HomeFilterState {
  final FilterViewModel filters;

  HomeFilterLoadedState(this.filters);

  @override
  String toString() => 'HomeFilterLoadedState';

  @override
  List<Object> get props => [filters];
}

class HomeFilteErrorState extends HomeFilterState {
  final String message;
  HomeFilteErrorState({required this.message});

  @override
  String toString() => 'HomeFilterErrorState';

  @override
  List<Object> get props => [message];
}

@immutable
class HomeSelectedFiltersState extends HomeFilterState {
  final List<FilterDTO> selectedFilters;
  HomeSelectedFiltersState(this.selectedFilters);

  @override
  List<Object> get props => [selectedFilters];
}
