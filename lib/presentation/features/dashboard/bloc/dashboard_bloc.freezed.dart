// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllDetailEvent value) getAllDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllDetailEvent value)? getAllDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllDetailEvent value)? getAllDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
          DashboardEvent value, $Res Function(DashboardEvent) then) =
      _$DashboardEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

  final DashboardEvent _value;
  // ignore: unused_field
  final $Res Function(DashboardEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$DashboardEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'DashboardEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllDetail,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllDetail,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllDetail,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllDetailEvent value) getAllDetail,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllDetailEvent value)? getAllDetail,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllDetailEvent value)? getAllDetail,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DashboardEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$GetAllDetailEventCopyWith<$Res> {
  factory _$$GetAllDetailEventCopyWith(
          _$GetAllDetailEvent value, $Res Function(_$GetAllDetailEvent) then) =
      __$$GetAllDetailEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllDetailEventCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res>
    implements _$$GetAllDetailEventCopyWith<$Res> {
  __$$GetAllDetailEventCopyWithImpl(
      _$GetAllDetailEvent _value, $Res Function(_$GetAllDetailEvent) _then)
      : super(_value, (v) => _then(v as _$GetAllDetailEvent));

  @override
  _$GetAllDetailEvent get _value => super._value as _$GetAllDetailEvent;
}

/// @nodoc

class _$GetAllDetailEvent implements GetAllDetailEvent {
  const _$GetAllDetailEvent();

  @override
  String toString() {
    return 'DashboardEvent.getAllDetail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllDetailEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllDetail,
  }) {
    return getAllDetail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllDetail,
  }) {
    return getAllDetail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllDetail,
    required TResult orElse(),
  }) {
    if (getAllDetail != null) {
      return getAllDetail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllDetailEvent value) getAllDetail,
  }) {
    return getAllDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllDetailEvent value)? getAllDetail,
  }) {
    return getAllDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllDetailEvent value)? getAllDetail,
    required TResult orElse(),
  }) {
    if (getAllDetail != null) {
      return getAllDetail(this);
    }
    return orElse();
  }
}

abstract class GetAllDetailEvent implements DashboardEvent {
  const factory GetAllDetailEvent() = _$GetAllDetailEvent;
}

/// @nodoc
mixin _$DashboardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DashboardViewModel viewModel) loaded,
    required TResult Function() loading,
    required TResult Function(dynamic error, String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DashboardViewModel viewModel)? loaded,
    TResult Function()? loading,
    TResult Function(dynamic error, String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DashboardViewModel viewModel)? loaded,
    TResult Function()? loading,
    TResult Function(dynamic error, String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(DashboardLoading value) loading,
    required TResult Function(LoadedError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(DashboardLoading value)? loading,
    TResult Function(LoadedError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(DashboardLoading value)? loading,
    TResult Function(LoadedError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  final DashboardState _value;
  // ignore: unused_field
  final $Res Function(DashboardState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$DashboardStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'DashboardState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DashboardViewModel viewModel) loaded,
    required TResult Function() loading,
    required TResult Function(dynamic error, String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DashboardViewModel viewModel)? loaded,
    TResult Function()? loading,
    TResult Function(dynamic error, String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DashboardViewModel viewModel)? loaded,
    TResult Function()? loading,
    TResult Function(dynamic error, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(DashboardLoading value) loading,
    required TResult Function(LoadedError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(DashboardLoading value)? loading,
    TResult Function(LoadedError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(DashboardLoading value)? loading,
    TResult Function(LoadedError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements DashboardState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
  $Res call({DashboardViewModel viewModel});
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res> extends _$DashboardStateCopyWithImpl<$Res>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, (v) => _then(v as _$Loaded));

  @override
  _$Loaded get _value => super._value as _$Loaded;

  @override
  $Res call({
    Object? viewModel = freezed,
  }) {
    return _then(_$Loaded(
      viewModel: viewModel == freezed
          ? _value.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as DashboardViewModel,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded({required this.viewModel});

  @override
  final DashboardViewModel viewModel;

  @override
  String toString() {
    return 'DashboardState.loaded(viewModel: $viewModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded &&
            const DeepCollectionEquality().equals(other.viewModel, viewModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(viewModel));

  @JsonKey(ignore: true)
  @override
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      __$$LoadedCopyWithImpl<_$Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DashboardViewModel viewModel) loaded,
    required TResult Function() loading,
    required TResult Function(dynamic error, String errorMessage) error,
  }) {
    return loaded(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DashboardViewModel viewModel)? loaded,
    TResult Function()? loading,
    TResult Function(dynamic error, String errorMessage)? error,
  }) {
    return loaded?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DashboardViewModel viewModel)? loaded,
    TResult Function()? loading,
    TResult Function(dynamic error, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(viewModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(DashboardLoading value) loading,
    required TResult Function(LoadedError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(DashboardLoading value)? loading,
    TResult Function(LoadedError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(DashboardLoading value)? loading,
    TResult Function(LoadedError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements DashboardState {
  const factory Loaded({required final DashboardViewModel viewModel}) =
      _$Loaded;

  DashboardViewModel get viewModel;
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DashboardLoadingCopyWith<$Res> {
  factory _$$DashboardLoadingCopyWith(
          _$DashboardLoading value, $Res Function(_$DashboardLoading) then) =
      __$$DashboardLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardLoadingCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$$DashboardLoadingCopyWith<$Res> {
  __$$DashboardLoadingCopyWithImpl(
      _$DashboardLoading _value, $Res Function(_$DashboardLoading) _then)
      : super(_value, (v) => _then(v as _$DashboardLoading));

  @override
  _$DashboardLoading get _value => super._value as _$DashboardLoading;
}

/// @nodoc

class _$DashboardLoading implements DashboardLoading {
  const _$DashboardLoading();

  @override
  String toString() {
    return 'DashboardState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DashboardLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DashboardViewModel viewModel) loaded,
    required TResult Function() loading,
    required TResult Function(dynamic error, String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DashboardViewModel viewModel)? loaded,
    TResult Function()? loading,
    TResult Function(dynamic error, String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DashboardViewModel viewModel)? loaded,
    TResult Function()? loading,
    TResult Function(dynamic error, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(DashboardLoading value) loading,
    required TResult Function(LoadedError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(DashboardLoading value)? loading,
    TResult Function(LoadedError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(DashboardLoading value)? loading,
    TResult Function(LoadedError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DashboardLoading implements DashboardState {
  const factory DashboardLoading() = _$DashboardLoading;
}

/// @nodoc
abstract class _$$LoadedErrorCopyWith<$Res> {
  factory _$$LoadedErrorCopyWith(
          _$LoadedError value, $Res Function(_$LoadedError) then) =
      __$$LoadedErrorCopyWithImpl<$Res>;
  $Res call({dynamic error, String errorMessage});
}

/// @nodoc
class __$$LoadedErrorCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$$LoadedErrorCopyWith<$Res> {
  __$$LoadedErrorCopyWithImpl(
      _$LoadedError _value, $Res Function(_$LoadedError) _then)
      : super(_value, (v) => _then(v as _$LoadedError));

  @override
  _$LoadedError get _value => super._value as _$LoadedError;

  @override
  $Res call({
    Object? error = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$LoadedError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedError implements LoadedError {
  const _$LoadedError(this.error, this.errorMessage);

  @override
  final dynamic error;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'DashboardState.error(error: $error, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$LoadedErrorCopyWith<_$LoadedError> get copyWith =>
      __$$LoadedErrorCopyWithImpl<_$LoadedError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DashboardViewModel viewModel) loaded,
    required TResult Function() loading,
    required TResult Function(dynamic error, String errorMessage) error,
  }) {
    return error(this.error, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DashboardViewModel viewModel)? loaded,
    TResult Function()? loading,
    TResult Function(dynamic error, String errorMessage)? error,
  }) {
    return error?.call(this.error, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DashboardViewModel viewModel)? loaded,
    TResult Function()? loading,
    TResult Function(dynamic error, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(DashboardLoading value) loading,
    required TResult Function(LoadedError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(DashboardLoading value)? loading,
    TResult Function(LoadedError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(DashboardLoading value)? loading,
    TResult Function(LoadedError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoadedError implements DashboardState {
  const factory LoadedError(final dynamic error, final String errorMessage) =
      _$LoadedError;

  dynamic get error;
  String get errorMessage;
  @JsonKey(ignore: true)
  _$$LoadedErrorCopyWith<_$LoadedError> get copyWith =>
      throw _privateConstructorUsedError;
}
