// Home Screen Bloc Events

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../../domain_layer/domain_layer.dart';

@immutable
abstract class HomeEvent extends Equatable {
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
  List<FilterDTO> filters;
  ApplyFiltersEvent(this.filters);
  
  @override
  String toString() => 'ApplyFiltersEvent';

  @override
  List<Object> get props => [filters];
}
