part of 'home_filter_bloc.dart';

// @freezed
// class HomeFilterEvent with _$HomeFilterEvent {
//   const factory HomeFilterEvent.started() = _Started;
// }

@immutable
abstract class HomeFilterEvent extends Equatable {
  @override
  List<Object> get props => [];
}

@immutable
class GetFiltersEvent extends HomeFilterEvent {
  @override
  String toString() => 'GetFiltersEvent';
}

@immutable
class BrandCheckboxTappedEvent extends HomeFilterEvent {
  final BrandDTO brand;
  bool selected;

  BrandCheckboxTappedEvent(this.brand, this.selected);

  @override
  List<Object> get props => [brand, selected];
}