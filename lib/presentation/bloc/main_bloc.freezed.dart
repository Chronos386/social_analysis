// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() fetchToLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? fetchToLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchToLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainEventFetch value) fetch,
    required TResult Function(MainEventFetchToLoaded value) fetchToLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainEventFetch value)? fetch,
    TResult? Function(MainEventFetchToLoaded value)? fetchToLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainEventFetch value)? fetch,
    TResult Function(MainEventFetchToLoaded value)? fetchToLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MainEventFetchCopyWith<$Res> {
  factory _$$MainEventFetchCopyWith(
          _$MainEventFetch value, $Res Function(_$MainEventFetch) then) =
      __$$MainEventFetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainEventFetchCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainEventFetch>
    implements _$$MainEventFetchCopyWith<$Res> {
  __$$MainEventFetchCopyWithImpl(
      _$MainEventFetch _value, $Res Function(_$MainEventFetch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainEventFetch implements MainEventFetch {
  const _$MainEventFetch();

  @override
  String toString() {
    return 'MainEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainEventFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() fetchToLoaded,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? fetchToLoaded,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchToLoaded,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainEventFetch value) fetch,
    required TResult Function(MainEventFetchToLoaded value) fetchToLoaded,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainEventFetch value)? fetch,
    TResult? Function(MainEventFetchToLoaded value)? fetchToLoaded,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainEventFetch value)? fetch,
    TResult Function(MainEventFetchToLoaded value)? fetchToLoaded,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class MainEventFetch implements MainEvent {
  const factory MainEventFetch() = _$MainEventFetch;
}

/// @nodoc
abstract class _$$MainEventFetchToLoadedCopyWith<$Res> {
  factory _$$MainEventFetchToLoadedCopyWith(_$MainEventFetchToLoaded value,
          $Res Function(_$MainEventFetchToLoaded) then) =
      __$$MainEventFetchToLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainEventFetchToLoadedCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainEventFetchToLoaded>
    implements _$$MainEventFetchToLoadedCopyWith<$Res> {
  __$$MainEventFetchToLoadedCopyWithImpl(_$MainEventFetchToLoaded _value,
      $Res Function(_$MainEventFetchToLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainEventFetchToLoaded implements MainEventFetchToLoaded {
  const _$MainEventFetchToLoaded();

  @override
  String toString() {
    return 'MainEvent.fetchToLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainEventFetchToLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() fetchToLoaded,
  }) {
    return fetchToLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? fetchToLoaded,
  }) {
    return fetchToLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchToLoaded,
    required TResult orElse(),
  }) {
    if (fetchToLoaded != null) {
      return fetchToLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainEventFetch value) fetch,
    required TResult Function(MainEventFetchToLoaded value) fetchToLoaded,
  }) {
    return fetchToLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainEventFetch value)? fetch,
    TResult? Function(MainEventFetchToLoaded value)? fetchToLoaded,
  }) {
    return fetchToLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainEventFetch value)? fetch,
    TResult Function(MainEventFetchToLoaded value)? fetchToLoaded,
    required TResult orElse(),
  }) {
    if (fetchToLoaded != null) {
      return fetchToLoaded(this);
    }
    return orElse();
  }
}

abstract class MainEventFetchToLoaded implements MainEvent {
  const factory MainEventFetchToLoaded() = _$MainEventFetchToLoaded;
}

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() successLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? successLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? successLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainStateLoaded value) loaded,
    required TResult Function(MainStateLoading value) loading,
    required TResult Function(MainStateError value) error,
    required TResult Function(MainStateSuccessLoaded value) successLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainStateLoaded value)? loaded,
    TResult? Function(MainStateLoading value)? loading,
    TResult? Function(MainStateError value)? error,
    TResult? Function(MainStateSuccessLoaded value)? successLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainStateLoaded value)? loaded,
    TResult Function(MainStateLoading value)? loading,
    TResult Function(MainStateError value)? error,
    TResult Function(MainStateSuccessLoaded value)? successLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MainStateLoadedCopyWith<$Res> {
  factory _$$MainStateLoadedCopyWith(
          _$MainStateLoaded value, $Res Function(_$MainStateLoaded) then) =
      __$$MainStateLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainStateLoadedCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateLoaded>
    implements _$$MainStateLoadedCopyWith<$Res> {
  __$$MainStateLoadedCopyWithImpl(
      _$MainStateLoaded _value, $Res Function(_$MainStateLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainStateLoaded implements MainStateLoaded {
  const _$MainStateLoaded();

  @override
  String toString() {
    return 'MainState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainStateLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() successLoaded,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? successLoaded,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? successLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainStateLoaded value) loaded,
    required TResult Function(MainStateLoading value) loading,
    required TResult Function(MainStateError value) error,
    required TResult Function(MainStateSuccessLoaded value) successLoaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainStateLoaded value)? loaded,
    TResult? Function(MainStateLoading value)? loading,
    TResult? Function(MainStateError value)? error,
    TResult? Function(MainStateSuccessLoaded value)? successLoaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainStateLoaded value)? loaded,
    TResult Function(MainStateLoading value)? loading,
    TResult Function(MainStateError value)? error,
    TResult Function(MainStateSuccessLoaded value)? successLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MainStateLoaded implements MainState {
  const factory MainStateLoaded() = _$MainStateLoaded;
}

/// @nodoc
abstract class _$$MainStateLoadingCopyWith<$Res> {
  factory _$$MainStateLoadingCopyWith(
          _$MainStateLoading value, $Res Function(_$MainStateLoading) then) =
      __$$MainStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainStateLoadingCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateLoading>
    implements _$$MainStateLoadingCopyWith<$Res> {
  __$$MainStateLoadingCopyWithImpl(
      _$MainStateLoading _value, $Res Function(_$MainStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainStateLoading implements MainStateLoading {
  const _$MainStateLoading();

  @override
  String toString() {
    return 'MainState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() successLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? successLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? successLoaded,
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
    required TResult Function(MainStateLoaded value) loaded,
    required TResult Function(MainStateLoading value) loading,
    required TResult Function(MainStateError value) error,
    required TResult Function(MainStateSuccessLoaded value) successLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainStateLoaded value)? loaded,
    TResult? Function(MainStateLoading value)? loading,
    TResult? Function(MainStateError value)? error,
    TResult? Function(MainStateSuccessLoaded value)? successLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainStateLoaded value)? loaded,
    TResult Function(MainStateLoading value)? loading,
    TResult Function(MainStateError value)? error,
    TResult Function(MainStateSuccessLoaded value)? successLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MainStateLoading implements MainState {
  const factory MainStateLoading() = _$MainStateLoading;
}

/// @nodoc
abstract class _$$MainStateErrorCopyWith<$Res> {
  factory _$$MainStateErrorCopyWith(
          _$MainStateError value, $Res Function(_$MainStateError) then) =
      __$$MainStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$MainStateErrorCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateError>
    implements _$$MainStateErrorCopyWith<$Res> {
  __$$MainStateErrorCopyWithImpl(
      _$MainStateError _value, $Res Function(_$MainStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$MainStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MainStateError implements MainStateError {
  const _$MainStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'MainState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateErrorCopyWith<_$MainStateError> get copyWith =>
      __$$MainStateErrorCopyWithImpl<_$MainStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() successLoaded,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? successLoaded,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? successLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainStateLoaded value) loaded,
    required TResult Function(MainStateLoading value) loading,
    required TResult Function(MainStateError value) error,
    required TResult Function(MainStateSuccessLoaded value) successLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainStateLoaded value)? loaded,
    TResult? Function(MainStateLoading value)? loading,
    TResult? Function(MainStateError value)? error,
    TResult? Function(MainStateSuccessLoaded value)? successLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainStateLoaded value)? loaded,
    TResult Function(MainStateLoading value)? loading,
    TResult Function(MainStateError value)? error,
    TResult Function(MainStateSuccessLoaded value)? successLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MainStateError implements MainState {
  const factory MainStateError({required final String error}) =
      _$MainStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$MainStateErrorCopyWith<_$MainStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainStateSuccessLoadedCopyWith<$Res> {
  factory _$$MainStateSuccessLoadedCopyWith(_$MainStateSuccessLoaded value,
          $Res Function(_$MainStateSuccessLoaded) then) =
      __$$MainStateSuccessLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainStateSuccessLoadedCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateSuccessLoaded>
    implements _$$MainStateSuccessLoadedCopyWith<$Res> {
  __$$MainStateSuccessLoadedCopyWithImpl(_$MainStateSuccessLoaded _value,
      $Res Function(_$MainStateSuccessLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainStateSuccessLoaded implements MainStateSuccessLoaded {
  const _$MainStateSuccessLoaded();

  @override
  String toString() {
    return 'MainState.successLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainStateSuccessLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() successLoaded,
  }) {
    return successLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? successLoaded,
  }) {
    return successLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? successLoaded,
    required TResult orElse(),
  }) {
    if (successLoaded != null) {
      return successLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainStateLoaded value) loaded,
    required TResult Function(MainStateLoading value) loading,
    required TResult Function(MainStateError value) error,
    required TResult Function(MainStateSuccessLoaded value) successLoaded,
  }) {
    return successLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainStateLoaded value)? loaded,
    TResult? Function(MainStateLoading value)? loading,
    TResult? Function(MainStateError value)? error,
    TResult? Function(MainStateSuccessLoaded value)? successLoaded,
  }) {
    return successLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainStateLoaded value)? loaded,
    TResult Function(MainStateLoading value)? loading,
    TResult Function(MainStateError value)? error,
    TResult Function(MainStateSuccessLoaded value)? successLoaded,
    required TResult orElse(),
  }) {
    if (successLoaded != null) {
      return successLoaded(this);
    }
    return orElse();
  }
}

abstract class MainStateSuccessLoaded implements MainState {
  const factory MainStateSuccessLoaded() = _$MainStateSuccessLoaded;
}
