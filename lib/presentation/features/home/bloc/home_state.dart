// Home Screen Bloc States

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:rameshclothhouse/presentation/features/home/view_models.dart';
import '../../../../domain_layer/domain_layer.dart';

@immutable
abstract class HomeState extends Equatable {
  @override
  List<Object> get props => [];
}

@immutable
class HomeInitialState extends HomeState {
  @override
  String toString() => 'HomeInitialState';
}

class HomePageListingState extends HomeState {
  HomePageListingState({
    this.itemList,
    this.error,
    this.nextPageKey = 0,
  });

  final Set<ProductDTO>? itemList;
  final dynamic error;
  final int? nextPageKey;
}

class HomeErrorState extends HomeState {
  final String message;
  HomeErrorState({required this.message});

  @override
  String toString() => 'HomeErrorState';

  @override
  List<Object> get props => [message];
}

class HomeProductResult extends HomeState {
  final String numberOfProducts;
  HomeProductResult(
    this.numberOfProducts,
  );

    @override
  List<Object> get props => [numberOfProducts];
}

class HomeSortByResult extends HomeState {
  final SortBy sortBy;
  HomeSortByResult(
    this.sortBy,
  );

    @override
  List<Object> get props => [sortBy];
}