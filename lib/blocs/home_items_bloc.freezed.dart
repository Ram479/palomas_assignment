// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_items_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeItemsEvent {
  String? get roomCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? roomCode) getHomeItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? roomCode)? getHomeItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? roomCode)? getHomeItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeItemsEvent value) getHomeItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHomeItemsEvent value)? getHomeItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeItemsEvent value)? getHomeItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeItemsEventCopyWith<HomeItemsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeItemsEventCopyWith<$Res> {
  factory $HomeItemsEventCopyWith(
          HomeItemsEvent value, $Res Function(HomeItemsEvent) then) =
      _$HomeItemsEventCopyWithImpl<$Res, HomeItemsEvent>;
  @useResult
  $Res call({String? roomCode});
}

/// @nodoc
class _$HomeItemsEventCopyWithImpl<$Res, $Val extends HomeItemsEvent>
    implements $HomeItemsEventCopyWith<$Res> {
  _$HomeItemsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomCode = freezed,
  }) {
    return _then(_value.copyWith(
      roomCode: freezed == roomCode
          ? _value.roomCode
          : roomCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetHomeItemsEventImplCopyWith<$Res>
    implements $HomeItemsEventCopyWith<$Res> {
  factory _$$GetHomeItemsEventImplCopyWith(_$GetHomeItemsEventImpl value,
          $Res Function(_$GetHomeItemsEventImpl) then) =
      __$$GetHomeItemsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? roomCode});
}

/// @nodoc
class __$$GetHomeItemsEventImplCopyWithImpl<$Res>
    extends _$HomeItemsEventCopyWithImpl<$Res, _$GetHomeItemsEventImpl>
    implements _$$GetHomeItemsEventImplCopyWith<$Res> {
  __$$GetHomeItemsEventImplCopyWithImpl(_$GetHomeItemsEventImpl _value,
      $Res Function(_$GetHomeItemsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomCode = freezed,
  }) {
    return _then(_$GetHomeItemsEventImpl(
      roomCode: freezed == roomCode
          ? _value.roomCode
          : roomCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetHomeItemsEventImpl implements GetHomeItemsEvent {
  const _$GetHomeItemsEventImpl({this.roomCode = 'DEFAULT'});

  @override
  @JsonKey()
  final String? roomCode;

  @override
  String toString() {
    return 'HomeItemsEvent.getHomeItems(roomCode: $roomCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeItemsEventImpl &&
            (identical(other.roomCode, roomCode) ||
                other.roomCode == roomCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHomeItemsEventImplCopyWith<_$GetHomeItemsEventImpl> get copyWith =>
      __$$GetHomeItemsEventImplCopyWithImpl<_$GetHomeItemsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? roomCode) getHomeItems,
  }) {
    return getHomeItems(roomCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? roomCode)? getHomeItems,
  }) {
    return getHomeItems?.call(roomCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? roomCode)? getHomeItems,
    required TResult orElse(),
  }) {
    if (getHomeItems != null) {
      return getHomeItems(roomCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeItemsEvent value) getHomeItems,
  }) {
    return getHomeItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHomeItemsEvent value)? getHomeItems,
  }) {
    return getHomeItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeItemsEvent value)? getHomeItems,
    required TResult orElse(),
  }) {
    if (getHomeItems != null) {
      return getHomeItems(this);
    }
    return orElse();
  }
}

abstract class GetHomeItemsEvent implements HomeItemsEvent {
  const factory GetHomeItemsEvent({final String? roomCode}) =
      _$GetHomeItemsEventImpl;

  @override
  String? get roomCode;
  @override
  @JsonKey(ignore: true)
  _$$GetHomeItemsEventImplCopyWith<_$GetHomeItemsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeItemsState {
  List<DiningTableModel> get homeItems => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeItemsStateCopyWith<HomeItemsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeItemsStateCopyWith<$Res> {
  factory $HomeItemsStateCopyWith(
          HomeItemsState value, $Res Function(HomeItemsState) then) =
      _$HomeItemsStateCopyWithImpl<$Res, HomeItemsState>;
  @useResult
  $Res call({List<DiningTableModel> homeItems, bool loading});
}

/// @nodoc
class _$HomeItemsStateCopyWithImpl<$Res, $Val extends HomeItemsState>
    implements $HomeItemsStateCopyWith<$Res> {
  _$HomeItemsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeItems = null,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      homeItems: null == homeItems
          ? _value.homeItems
          : homeItems // ignore: cast_nullable_to_non_nullable
              as List<DiningTableModel>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeItemsStateImplCopyWith<$Res>
    implements $HomeItemsStateCopyWith<$Res> {
  factory _$$HomeItemsStateImplCopyWith(_$HomeItemsStateImpl value,
          $Res Function(_$HomeItemsStateImpl) then) =
      __$$HomeItemsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DiningTableModel> homeItems, bool loading});
}

/// @nodoc
class __$$HomeItemsStateImplCopyWithImpl<$Res>
    extends _$HomeItemsStateCopyWithImpl<$Res, _$HomeItemsStateImpl>
    implements _$$HomeItemsStateImplCopyWith<$Res> {
  __$$HomeItemsStateImplCopyWithImpl(
      _$HomeItemsStateImpl _value, $Res Function(_$HomeItemsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeItems = null,
    Object? loading = null,
  }) {
    return _then(_$HomeItemsStateImpl(
      homeItems: null == homeItems
          ? _value._homeItems
          : homeItems // ignore: cast_nullable_to_non_nullable
              as List<DiningTableModel>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeItemsStateImpl implements _HomeItemsState {
  const _$HomeItemsStateImpl(
      {final List<DiningTableModel> homeItems = const [], this.loading = false})
      : _homeItems = homeItems;

  final List<DiningTableModel> _homeItems;
  @override
  @JsonKey()
  List<DiningTableModel> get homeItems {
    if (_homeItems is EqualUnmodifiableListView) return _homeItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_homeItems);
  }

  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'HomeItemsState(homeItems: $homeItems, loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeItemsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._homeItems, _homeItems) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_homeItems), loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeItemsStateImplCopyWith<_$HomeItemsStateImpl> get copyWith =>
      __$$HomeItemsStateImplCopyWithImpl<_$HomeItemsStateImpl>(
          this, _$identity);
}

abstract class _HomeItemsState implements HomeItemsState {
  const factory _HomeItemsState(
      {final List<DiningTableModel> homeItems,
      final bool loading}) = _$HomeItemsStateImpl;

  @override
  List<DiningTableModel> get homeItems;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$HomeItemsStateImplCopyWith<_$HomeItemsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
