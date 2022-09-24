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
    this.error,
    this.nextPageKey = 0,
  });

  final List<ProductDTO>? itemList;
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
