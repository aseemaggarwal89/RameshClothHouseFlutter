// Home Screen Bloc States
// Author: openflutterproject@gmail.com
// Date: 2020-02-06

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

@immutable
class HomeLoadedState extends HomeState {
  final List<ProductDTO> products;

  HomeLoadedState({required this.products});

  @override
  String toString() => 'HomeLoadedState';

  @override
  List<Object> get props => [products];
}
