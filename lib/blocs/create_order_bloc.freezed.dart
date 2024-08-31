// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateOrderEvent {
  String get tableID => throw _privateConstructorUsedError;
  List<OrderModel> get orders => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tableID, List<OrderModel> orders)
        takeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String tableID, List<OrderModel> orders)? takeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tableID, List<OrderModel> orders)? takeOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TakeOrderEvent value) takeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TakeOrderEvent value)? takeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TakeOrderEvent value)? takeOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateOrderEventCopyWith<CreateOrderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderEventCopyWith<$Res> {
  factory $CreateOrderEventCopyWith(
          CreateOrderEvent value, $Res Function(CreateOrderEvent) then) =
      _$CreateOrderEventCopyWithImpl<$Res, CreateOrderEvent>;
  @useResult
  $Res call({String tableID, List<OrderModel> orders});
}

/// @nodoc
class _$CreateOrderEventCopyWithImpl<$Res, $Val extends CreateOrderEvent>
    implements $CreateOrderEventCopyWith<$Res> {
  _$CreateOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableID = null,
    Object? orders = null,
  }) {
    return _then(_value.copyWith(
      tableID: null == tableID
          ? _value.tableID
          : tableID // ignore: cast_nullable_to_non_nullable
              as String,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TakeOrderEventImplCopyWith<$Res>
    implements $CreateOrderEventCopyWith<$Res> {
  factory _$$TakeOrderEventImplCopyWith(_$TakeOrderEventImpl value,
          $Res Function(_$TakeOrderEventImpl) then) =
      __$$TakeOrderEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tableID, List<OrderModel> orders});
}

/// @nodoc
class __$$TakeOrderEventImplCopyWithImpl<$Res>
    extends _$CreateOrderEventCopyWithImpl<$Res, _$TakeOrderEventImpl>
    implements _$$TakeOrderEventImplCopyWith<$Res> {
  __$$TakeOrderEventImplCopyWithImpl(
      _$TakeOrderEventImpl _value, $Res Function(_$TakeOrderEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableID = null,
    Object? orders = null,
  }) {
    return _then(_$TakeOrderEventImpl(
      tableID: null == tableID
          ? _value.tableID
          : tableID // ignore: cast_nullable_to_non_nullable
              as String,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ));
  }
}

/// @nodoc

class _$TakeOrderEventImpl implements TakeOrderEvent {
  const _$TakeOrderEventImpl(
      {required this.tableID, required final List<OrderModel> orders})
      : _orders = orders;

  @override
  final String tableID;
  final List<OrderModel> _orders;
  @override
  List<OrderModel> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'CreateOrderEvent.takeOrder(tableID: $tableID, orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TakeOrderEventImpl &&
            (identical(other.tableID, tableID) || other.tableID == tableID) &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, tableID, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TakeOrderEventImplCopyWith<_$TakeOrderEventImpl> get copyWith =>
      __$$TakeOrderEventImplCopyWithImpl<_$TakeOrderEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tableID, List<OrderModel> orders)
        takeOrder,
  }) {
    return takeOrder(tableID, orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String tableID, List<OrderModel> orders)? takeOrder,
  }) {
    return takeOrder?.call(tableID, orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tableID, List<OrderModel> orders)? takeOrder,
    required TResult orElse(),
  }) {
    if (takeOrder != null) {
      return takeOrder(tableID, orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TakeOrderEvent value) takeOrder,
  }) {
    return takeOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TakeOrderEvent value)? takeOrder,
  }) {
    return takeOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TakeOrderEvent value)? takeOrder,
    required TResult orElse(),
  }) {
    if (takeOrder != null) {
      return takeOrder(this);
    }
    return orElse();
  }
}

abstract class TakeOrderEvent implements CreateOrderEvent {
  const factory TakeOrderEvent(
      {required final String tableID,
      required final List<OrderModel> orders}) = _$TakeOrderEventImpl;

  @override
  String get tableID;
  @override
  List<OrderModel> get orders;
  @override
  @JsonKey(ignore: true)
  _$$TakeOrderEventImplCopyWith<_$TakeOrderEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateOrderState {
  List<OrderModel> get ordersTaken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateOrderStateCopyWith<CreateOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderStateCopyWith<$Res> {
  factory $CreateOrderStateCopyWith(
          CreateOrderState value, $Res Function(CreateOrderState) then) =
      _$CreateOrderStateCopyWithImpl<$Res, CreateOrderState>;
  @useResult
  $Res call({List<OrderModel> ordersTaken});
}

/// @nodoc
class _$CreateOrderStateCopyWithImpl<$Res, $Val extends CreateOrderState>
    implements $CreateOrderStateCopyWith<$Res> {
  _$CreateOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersTaken = null,
  }) {
    return _then(_value.copyWith(
      ordersTaken: null == ordersTaken
          ? _value.ordersTaken
          : ordersTaken // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateOrderStateImplCopyWith<$Res>
    implements $CreateOrderStateCopyWith<$Res> {
  factory _$$CreateOrderStateImplCopyWith(_$CreateOrderStateImpl value,
          $Res Function(_$CreateOrderStateImpl) then) =
      __$$CreateOrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OrderModel> ordersTaken});
}

/// @nodoc
class __$$CreateOrderStateImplCopyWithImpl<$Res>
    extends _$CreateOrderStateCopyWithImpl<$Res, _$CreateOrderStateImpl>
    implements _$$CreateOrderStateImplCopyWith<$Res> {
  __$$CreateOrderStateImplCopyWithImpl(_$CreateOrderStateImpl _value,
      $Res Function(_$CreateOrderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersTaken = null,
  }) {
    return _then(_$CreateOrderStateImpl(
      ordersTaken: null == ordersTaken
          ? _value._ordersTaken
          : ordersTaken // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ));
  }
}

/// @nodoc

class _$CreateOrderStateImpl implements _CreateOrderState {
  const _$CreateOrderStateImpl({final List<OrderModel> ordersTaken = const []})
      : _ordersTaken = ordersTaken;

  final List<OrderModel> _ordersTaken;
  @override
  @JsonKey()
  List<OrderModel> get ordersTaken {
    if (_ordersTaken is EqualUnmodifiableListView) return _ordersTaken;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ordersTaken);
  }

  @override
  String toString() {
    return 'CreateOrderState(ordersTaken: $ordersTaken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderStateImpl &&
            const DeepCollectionEquality()
                .equals(other._ordersTaken, _ordersTaken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ordersTaken));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderStateImplCopyWith<_$CreateOrderStateImpl> get copyWith =>
      __$$CreateOrderStateImplCopyWithImpl<_$CreateOrderStateImpl>(
          this, _$identity);
}

abstract class _CreateOrderState implements CreateOrderState {
  const factory _CreateOrderState({final List<OrderModel> ordersTaken}) =
      _$CreateOrderStateImpl;

  @override
  List<OrderModel> get ordersTaken;
  @override
  @JsonKey(ignore: true)
  _$$CreateOrderStateImplCopyWith<_$CreateOrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
