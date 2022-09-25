// Home Screen Bloc Events

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/features/home/view_models.dart';

import '../../../../domain_layer/domain_layer.dart';

@immutable
abstract class HomeEvent {
  @override
  List<Object> get props => [];
}

@immutable
class GetProductsEvent extends HomeEvent {
  @override
  String toString() => 'Home is Loaded';
}

@immutable
class ApplyFiltersEvent extends HomeEvent {
  final List<FilterDTO> filters;
  ApplyFiltersEvent(this.filters);

  @override
  List<Object> get props => [filters];
}

@immutable
class ApplySortByEvent extends HomeEvent {
  final SortBy sortBy;
  ApplySortByEvent(this.sortBy);

  @override
  List<Object> get props => [sortBy];
}

@immutable
class UpdateNumberOfProductsEvent extends HomeEvent {
  // final int results;
  UpdateNumberOfProductsEvent();

  // @override
  // List<Object> get props => [results];
}
