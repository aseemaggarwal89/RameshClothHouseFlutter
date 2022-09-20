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
