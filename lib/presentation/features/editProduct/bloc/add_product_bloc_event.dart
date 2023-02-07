part of 'add_product_bloc_bloc.dart';

@freezed
class AddProductBlocEvent with _$AddProductBlocEvent {
  const factory AddProductBlocEvent.started() = _Started;
}