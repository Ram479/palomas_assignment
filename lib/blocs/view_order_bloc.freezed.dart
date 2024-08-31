// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ViewOrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? status) getViewOrders,
    required TResult Function(OrderWrapper orderList, String tableID)
        markBillAsPaid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status)? getViewOrders,
    TResult? Function(OrderWrapper orderList, String tableID)? markBillAsPaid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status)? getViewOrders,
    TResult Function(OrderWrapper orderList, String tableID)? markBillAsPaid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetViewOrdersEvent value) getViewOrders,
    required TResult Function(MarkOrderPaidEvent value) markBillAsPaid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetViewOrdersEvent value)? getViewOrders,
    TResult? Function(MarkOrderPaidEvent value)? markBillAsPaid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetViewOrdersEvent value)? getViewOrders,
    TResult Function(MarkOrderPaidEvent value)? markBillAsPaid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewOrdersEventCopyWith<$Res> {
  factory $ViewOrdersEventCopyWith(
          ViewOrdersEvent value, $Res Function(ViewOrdersEvent) then) =
      _$ViewOrdersEventCopyWithImpl<$Res, ViewOrdersEvent>;
}

/// @nodoc
class _$ViewOrdersEventCopyWithImpl<$Res, $Val extends ViewOrdersEvent>
    implements $ViewOrdersEventCopyWith<$Res> {
  _$ViewOrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetViewOrdersEventImplCopyWith<$Res> {
  factory _$$GetViewOrdersEventImplCopyWith(_$GetViewOrdersEventImpl value,
          $Res Function(_$GetViewOrdersEventImpl) then) =
      __$$GetViewOrdersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? status});
}

/// @nodoc
class __$$GetViewOrdersEventImplCopyWithImpl<$Res>
    extends _$ViewOrdersEventCopyWithImpl<$Res, _$GetViewOrdersEventImpl>
    implements _$$GetViewOrdersEventImplCopyWith<$Res> {
  __$$GetViewOrdersEventImplCopyWithImpl(_$GetViewOrdersEventImpl _value,
      $Res Function(_$GetViewOrdersEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$GetViewOrdersEventImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetViewOrdersEventImpl implements GetViewOrdersEvent {
  const _$GetViewOrdersEventImpl({this.status = 'In Progress'});

  @override
  @JsonKey()
  final String? status;

  @override
  String toString() {
    return 'ViewOrdersEvent.getViewOrders(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetViewOrdersEventImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetViewOrdersEventImplCopyWith<_$GetViewOrdersEventImpl> get copyWith =>
      __$$GetViewOrdersEventImplCopyWithImpl<_$GetViewOrdersEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? status) getViewOrders,
    required TResult Function(OrderWrapper orderList, String tableID)
        markBillAsPaid,
  }) {
    return getViewOrders(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status)? getViewOrders,
    TResult? Function(OrderWrapper orderList, String tableID)? markBillAsPaid,
  }) {
    return getViewOrders?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status)? getViewOrders,
    TResult Function(OrderWrapper orderList, String tableID)? markBillAsPaid,
    required TResult orElse(),
  }) {
    if (getViewOrders != null) {
      return getViewOrders(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetViewOrdersEvent value) getViewOrders,
    required TResult Function(MarkOrderPaidEvent value) markBillAsPaid,
  }) {
    return getViewOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetViewOrdersEvent value)? getViewOrders,
    TResult? Function(MarkOrderPaidEvent value)? markBillAsPaid,
  }) {
    return getViewOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetViewOrdersEvent value)? getViewOrders,
    TResult Function(MarkOrderPaidEvent value)? markBillAsPaid,
    required TResult orElse(),
  }) {
    if (getViewOrders != null) {
      return getViewOrders(this);
    }
    return orElse();
  }
}

abstract class GetViewOrdersEvent implements ViewOrdersEvent {
  const factory GetViewOrdersEvent({final String? status}) =
      _$GetViewOrdersEventImpl;

  String? get status;
  @JsonKey(ignore: true)
  _$$GetViewOrdersEventImplCopyWith<_$GetViewOrdersEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkOrderPaidEventImplCopyWith<$Res> {
  factory _$$MarkOrderPaidEventImplCopyWith(_$MarkOrderPaidEventImpl value,
          $Res Function(_$MarkOrderPaidEventImpl) then) =
      __$$MarkOrderPaidEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderWrapper orderList, String tableID});
}

/// @nodoc
class __$$MarkOrderPaidEventImplCopyWithImpl<$Res>
    extends _$ViewOrdersEventCopyWithImpl<$Res, _$MarkOrderPaidEventImpl>
    implements _$$MarkOrderPaidEventImplCopyWith<$Res> {
  __$$MarkOrderPaidEventImplCopyWithImpl(_$MarkOrderPaidEventImpl _value,
      $Res Function(_$MarkOrderPaidEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderList = null,
    Object? tableID = null,
  }) {
    return _then(_$MarkOrderPaidEventImpl(
      orderList: null == orderList
          ? _value.orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as OrderWrapper,
      tableID: null == tableID
          ? _value.tableID
          : tableID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkOrderPaidEventImpl implements MarkOrderPaidEvent {
  const _$MarkOrderPaidEventImpl(
      {required this.orderList, required this.tableID});

  @override
  final OrderWrapper orderList;
  @override
  final String tableID;

  @override
  String toString() {
    return 'ViewOrdersEvent.markBillAsPaid(orderList: $orderList, tableID: $tableID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkOrderPaidEventImpl &&
            (identical(other.orderList, orderList) ||
                other.orderList == orderList) &&
            (identical(other.tableID, tableID) || other.tableID == tableID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderList, tableID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkOrderPaidEventImplCopyWith<_$MarkOrderPaidEventImpl> get copyWith =>
      __$$MarkOrderPaidEventImplCopyWithImpl<_$MarkOrderPaidEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? status) getViewOrders,
    required TResult Function(OrderWrapper orderList, String tableID)
        markBillAsPaid,
  }) {
    return markBillAsPaid(orderList, tableID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status)? getViewOrders,
    TResult? Function(OrderWrapper orderList, String tableID)? markBillAsPaid,
  }) {
    return markBillAsPaid?.call(orderList, tableID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status)? getViewOrders,
    TResult Function(OrderWrapper orderList, String tableID)? markBillAsPaid,
    required TResult orElse(),
  }) {
    if (markBillAsPaid != null) {
      return markBillAsPaid(orderList, tableID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetViewOrdersEvent value) getViewOrders,
    required TResult Function(MarkOrderPaidEvent value) markBillAsPaid,
  }) {
    return markBillAsPaid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetViewOrdersEvent value)? getViewOrders,
    TResult? Function(MarkOrderPaidEvent value)? markBillAsPaid,
  }) {
    return markBillAsPaid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetViewOrdersEvent value)? getViewOrders,
    TResult Function(MarkOrderPaidEvent value)? markBillAsPaid,
    required TResult orElse(),
  }) {
    if (markBillAsPaid != null) {
      return markBillAsPaid(this);
    }
    return orElse();
  }
}

abstract class MarkOrderPaidEvent implements ViewOrdersEvent {
  const factory MarkOrderPaidEvent(
      {required final OrderWrapper orderList,
      required final String tableID}) = _$MarkOrderPaidEventImpl;

  OrderWrapper get orderList;
  String get tableID;
  @JsonKey(ignore: true)
  _$$MarkOrderPaidEventImplCopyWith<_$MarkOrderPaidEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ViewOrdersState {
  List<OrderWrapper> get orderList => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewOrdersStateCopyWith<ViewOrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewOrdersStateCopyWith<$Res> {
  factory $ViewOrdersStateCopyWith(
          ViewOrdersState value, $Res Function(ViewOrdersState) then) =
      _$ViewOrdersStateCopyWithImpl<$Res, ViewOrdersState>;
  @useResult
  $Res call({List<OrderWrapper> orderList, bool loading});
}

/// @nodoc
class _$ViewOrdersStateCopyWithImpl<$Res, $Val extends ViewOrdersState>
    implements $ViewOrdersStateCopyWith<$Res> {
  _$ViewOrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderList = null,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      orderList: null == orderList
          ? _value.orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<OrderWrapper>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ViewOrdersStateImplCopyWith<$Res>
    implements $ViewOrdersStateCopyWith<$Res> {
  factory _$$ViewOrdersStateImplCopyWith(_$ViewOrdersStateImpl value,
          $Res Function(_$ViewOrdersStateImpl) then) =
      __$$ViewOrdersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OrderWrapper> orderList, bool loading});
}

/// @nodoc
class __$$ViewOrdersStateImplCopyWithImpl<$Res>
    extends _$ViewOrdersStateCopyWithImpl<$Res, _$ViewOrdersStateImpl>
    implements _$$ViewOrdersStateImplCopyWith<$Res> {
  __$$ViewOrdersStateImplCopyWithImpl(
      _$ViewOrdersStateImpl _value, $Res Function(_$ViewOrdersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderList = null,
    Object? loading = null,
  }) {
    return _then(_$ViewOrdersStateImpl(
      orderList: null == orderList
          ? _value._orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<OrderWrapper>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ViewOrdersStateImpl implements _ViewOrdersState {
  const _$ViewOrdersStateImpl(
      {final List<OrderWrapper> orderList = const [], this.loading = false})
      : _orderList = orderList;

  final List<OrderWrapper> _orderList;
  @override
  @JsonKey()
  List<OrderWrapper> get orderList {
    if (_orderList is EqualUnmodifiableListView) return _orderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderList);
  }

  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'ViewOrdersState(orderList: $orderList, loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewOrdersStateImpl &&
            const DeepCollectionEquality()
                .equals(other._orderList, _orderList) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orderList), loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewOrdersStateImplCopyWith<_$ViewOrdersStateImpl> get copyWith =>
      __$$ViewOrdersStateImplCopyWithImpl<_$ViewOrdersStateImpl>(
          this, _$identity);
}

abstract class _ViewOrdersState implements ViewOrdersState {
  const factory _ViewOrdersState(
      {final List<OrderWrapper> orderList,
      final bool loading}) = _$ViewOrdersStateImpl;

  @override
  List<OrderWrapper> get orderList;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$ViewOrdersStateImplCopyWith<_$ViewOrdersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
