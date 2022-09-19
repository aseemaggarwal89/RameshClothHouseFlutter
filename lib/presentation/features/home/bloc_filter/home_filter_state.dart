import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
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
  final List<BrandDTO> brands;

  HomeFilterLoadedState({required this.brands});

  @override
  String toString() => 'HomeFilterLoadedState';

  @override
  List<Object> get props => [brands.map((e) => e.uniqueId)];

  List<BrandDTO> get activeBrands {
    return brands.where((element) => element.active).toList();
  }
}

class HomeFilteErrorState extends HomeFilterState {
  final String message;
  HomeFilteErrorState({required this.message});

  @override
  String toString() => 'HomeFilterErrorState';

  @override
  List<Object> get props => [message];
}
