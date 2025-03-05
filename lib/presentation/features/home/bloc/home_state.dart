// Home Screen Bloc States

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
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
    this.keys,
    this.error,
    this.nextPageKey = 0,
  });

  final List<List<ProductDTO>>? itemList;
  final List<int>? keys;
  final dynamic error;
  final int? nextPageKey;
}

class HomeProductResult extends HomeState {
  final int numberOfProducts;
  final dynamic error;

  HomeProductResult(this.numberOfProducts, {this.error});

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
