part of 'home_filter_bloc.dart';

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
class FilterCheckboxTappedEvent extends HomeFilterEvent {
  final FilterDTO filter;
  final bool selected;

  FilterCheckboxTappedEvent(this.filter, this.selected);

  @override
  List<Object> get props => [filter, selected];
}
