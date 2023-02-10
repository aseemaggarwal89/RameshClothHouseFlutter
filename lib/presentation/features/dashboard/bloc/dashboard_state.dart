part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = Initial;
  const factory DashboardState.loaded({required DashboardViewModel viewModel}) =
      Loaded;
  const factory DashboardState.loading() = Loading;
  const factory DashboardState.error(dynamic error, String errorMessage) =
      LoadedError;
}
