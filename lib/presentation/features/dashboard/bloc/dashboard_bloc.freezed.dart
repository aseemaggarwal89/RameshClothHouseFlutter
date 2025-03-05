// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DashboardEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DashboardEvent()';
  }
}

/// @nodoc
class $DashboardEventCopyWith<$Res> {
  $DashboardEventCopyWith(DashboardEvent _, $Res Function(DashboardEvent) __);
}

/// @nodoc

class _Started implements DashboardEvent {
  const _Started();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DashboardEvent.started()';
  }
}

/// @nodoc

class GetAllDetailEvent implements DashboardEvent {
  const GetAllDetailEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetAllDetailEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DashboardEvent.getAllDetail()';
  }
}

/// @nodoc
mixin _$DashboardState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DashboardState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DashboardState()';
  }
}

/// @nodoc
class $DashboardStateCopyWith<$Res> {
  $DashboardStateCopyWith(DashboardState _, $Res Function(DashboardState) __);
}

/// @nodoc

class Initial implements DashboardState {
  const Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DashboardState.initial()';
  }
}

/// @nodoc

class Loaded implements DashboardState {
  const Loaded({required this.viewModel});

  final DashboardViewModel viewModel;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Loaded &&
            (identical(other.viewModel, viewModel) ||
                other.viewModel == viewModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewModel);

  @override
  String toString() {
    return 'DashboardState.loaded(viewModel: $viewModel)';
  }
}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) =
      _$LoadedCopyWithImpl;
  @useResult
  $Res call({DashboardViewModel viewModel});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? viewModel = null,
  }) {
    return _then(Loaded(
      viewModel: null == viewModel
          ? _self.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as DashboardViewModel,
    ));
  }
}

/// @nodoc

class DashboardLoading implements DashboardState {
  const DashboardLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DashboardLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DashboardState.loading()';
  }
}

/// @nodoc

class LoadedError implements DashboardState {
  const LoadedError(this.error, this.errorMessage);

  final dynamic error;
  final String errorMessage;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoadedErrorCopyWith<LoadedError> get copyWith =>
      _$LoadedErrorCopyWithImpl<LoadedError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), errorMessage);

  @override
  String toString() {
    return 'DashboardState.error(error: $error, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $LoadedErrorCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory $LoadedErrorCopyWith(
          LoadedError value, $Res Function(LoadedError) _then) =
      _$LoadedErrorCopyWithImpl;
  @useResult
  $Res call({dynamic error, String errorMessage});
}

/// @nodoc
class _$LoadedErrorCopyWithImpl<$Res> implements $LoadedErrorCopyWith<$Res> {
  _$LoadedErrorCopyWithImpl(this._self, this._then);

  final LoadedError _self;
  final $Res Function(LoadedError) _then;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = freezed,
    Object? errorMessage = null,
  }) {
    return _then(LoadedError(
      freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
