// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_initialization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppInitializationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appInitialization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appInitialization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appInitialization,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeAppEvent value) appInitialization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeAppEvent value)? appInitialization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeAppEvent value)? appInitialization,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInitializationEventCopyWith<$Res> {
  factory $AppInitializationEventCopyWith(AppInitializationEvent value,
          $Res Function(AppInitializationEvent) then) =
      _$AppInitializationEventCopyWithImpl<$Res, AppInitializationEvent>;
}

/// @nodoc
class _$AppInitializationEventCopyWithImpl<$Res,
        $Val extends AppInitializationEvent>
    implements $AppInitializationEventCopyWith<$Res> {
  _$AppInitializationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeAppEventImplCopyWith<$Res> {
  factory _$$InitializeAppEventImplCopyWith(_$InitializeAppEventImpl value,
          $Res Function(_$InitializeAppEventImpl) then) =
      __$$InitializeAppEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeAppEventImplCopyWithImpl<$Res>
    extends _$AppInitializationEventCopyWithImpl<$Res, _$InitializeAppEventImpl>
    implements _$$InitializeAppEventImplCopyWith<$Res> {
  __$$InitializeAppEventImplCopyWithImpl(_$InitializeAppEventImpl _value,
      $Res Function(_$InitializeAppEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeAppEventImpl implements InitializeAppEvent {
  const _$InitializeAppEventImpl();

  @override
  String toString() {
    return 'AppInitializationEvent.appInitialization()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeAppEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appInitialization,
  }) {
    return appInitialization();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appInitialization,
  }) {
    return appInitialization?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appInitialization,
    required TResult orElse(),
  }) {
    if (appInitialization != null) {
      return appInitialization();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeAppEvent value) appInitialization,
  }) {
    return appInitialization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeAppEvent value)? appInitialization,
  }) {
    return appInitialization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeAppEvent value)? appInitialization,
    required TResult orElse(),
  }) {
    if (appInitialization != null) {
      return appInitialization(this);
    }
    return orElse();
  }
}

abstract class InitializeAppEvent implements AppInitializationEvent {
  const factory InitializeAppEvent() = _$InitializeAppEventImpl;
}

/// @nodoc
mixin _$AppInitializationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<RoomModel>? rooms) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<RoomModel>? rooms)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<RoomModel>? rooms)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppInitializationLoadingState value) loading,
    required TResult Function(_AppInitializationCompletedState value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppInitializationLoadingState value)? loading,
    TResult? Function(_AppInitializationCompletedState value)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppInitializationLoadingState value)? loading,
    TResult Function(_AppInitializationCompletedState value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInitializationStateCopyWith<$Res> {
  factory $AppInitializationStateCopyWith(AppInitializationState value,
          $Res Function(AppInitializationState) then) =
      _$AppInitializationStateCopyWithImpl<$Res, AppInitializationState>;
}

/// @nodoc
class _$AppInitializationStateCopyWithImpl<$Res,
        $Val extends AppInitializationState>
    implements $AppInitializationStateCopyWith<$Res> {
  _$AppInitializationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppInitializationLoadingStateImplCopyWith<$Res> {
  factory _$$AppInitializationLoadingStateImplCopyWith(
          _$AppInitializationLoadingStateImpl value,
          $Res Function(_$AppInitializationLoadingStateImpl) then) =
      __$$AppInitializationLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppInitializationLoadingStateImplCopyWithImpl<$Res>
    extends _$AppInitializationStateCopyWithImpl<$Res,
        _$AppInitializationLoadingStateImpl>
    implements _$$AppInitializationLoadingStateImplCopyWith<$Res> {
  __$$AppInitializationLoadingStateImplCopyWithImpl(
      _$AppInitializationLoadingStateImpl _value,
      $Res Function(_$AppInitializationLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppInitializationLoadingStateImpl
    implements _AppInitializationLoadingState {
  const _$AppInitializationLoadingStateImpl();

  @override
  String toString() {
    return 'AppInitializationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppInitializationLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<RoomModel>? rooms) completed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<RoomModel>? rooms)? completed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<RoomModel>? rooms)? completed,
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
    required TResult Function(_AppInitializationLoadingState value) loading,
    required TResult Function(_AppInitializationCompletedState value) completed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppInitializationLoadingState value)? loading,
    TResult? Function(_AppInitializationCompletedState value)? completed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppInitializationLoadingState value)? loading,
    TResult Function(_AppInitializationCompletedState value)? completed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AppInitializationLoadingState
    implements AppInitializationState {
  const factory _AppInitializationLoadingState() =
      _$AppInitializationLoadingStateImpl;
}

/// @nodoc
abstract class _$$AppInitializationCompletedStateImplCopyWith<$Res> {
  factory _$$AppInitializationCompletedStateImplCopyWith(
          _$AppInitializationCompletedStateImpl value,
          $Res Function(_$AppInitializationCompletedStateImpl) then) =
      __$$AppInitializationCompletedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RoomModel>? rooms});
}

/// @nodoc
class __$$AppInitializationCompletedStateImplCopyWithImpl<$Res>
    extends _$AppInitializationStateCopyWithImpl<$Res,
        _$AppInitializationCompletedStateImpl>
    implements _$$AppInitializationCompletedStateImplCopyWith<$Res> {
  __$$AppInitializationCompletedStateImplCopyWithImpl(
      _$AppInitializationCompletedStateImpl _value,
      $Res Function(_$AppInitializationCompletedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = freezed,
  }) {
    return _then(_$AppInitializationCompletedStateImpl(
      rooms: freezed == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>?,
    ));
  }
}

/// @nodoc

class _$AppInitializationCompletedStateImpl
    implements _AppInitializationCompletedState {
  const _$AppInitializationCompletedStateImpl(
      {final List<RoomModel>? rooms = const []})
      : _rooms = rooms;

  final List<RoomModel>? _rooms;
  @override
  @JsonKey()
  List<RoomModel>? get rooms {
    final value = _rooms;
    if (value == null) return null;
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AppInitializationState.completed(rooms: $rooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppInitializationCompletedStateImpl &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppInitializationCompletedStateImplCopyWith<
          _$AppInitializationCompletedStateImpl>
      get copyWith => __$$AppInitializationCompletedStateImplCopyWithImpl<
          _$AppInitializationCompletedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<RoomModel>? rooms) completed,
  }) {
    return completed(rooms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<RoomModel>? rooms)? completed,
  }) {
    return completed?.call(rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<RoomModel>? rooms)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(rooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppInitializationLoadingState value) loading,
    required TResult Function(_AppInitializationCompletedState value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppInitializationLoadingState value)? loading,
    TResult? Function(_AppInitializationCompletedState value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppInitializationLoadingState value)? loading,
    TResult Function(_AppInitializationCompletedState value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _AppInitializationCompletedState
    implements AppInitializationState {
  const factory _AppInitializationCompletedState(
      {final List<RoomModel>? rooms}) = _$AppInitializationCompletedStateImpl;

  List<RoomModel>? get rooms;
  @JsonKey(ignore: true)
  _$$AppInitializationCompletedStateImplCopyWith<
          _$AppInitializationCompletedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
