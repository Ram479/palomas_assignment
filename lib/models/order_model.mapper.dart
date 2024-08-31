// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'order_model.dart';

class OrderSearchModelMapper extends ClassMapperBase<OrderSearchModel> {
  OrderSearchModelMapper._();

  static OrderSearchModelMapper? _instance;
  static OrderSearchModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrderSearchModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'OrderSearchModel';

  static List<String>? _$id(OrderSearchModel v) => v.id;
  static const Field<OrderSearchModel, List<String>> _f$id =
      Field('id', _$id, opt: true);
  static String? _$tableNo(OrderSearchModel v) => v.tableNo;
  static const Field<OrderSearchModel, String> _f$tableNo =
      Field('tableNo', _$tableNo, opt: true);
  static String? _$room(OrderSearchModel v) => v.room;
  static const Field<OrderSearchModel, String> _f$room =
      Field('room', _$room, opt: true);
  static bool? _$isDeleted(OrderSearchModel v) => v.isDeleted;
  static const Field<OrderSearchModel, bool> _f$isDeleted =
      Field('isDeleted', _$isDeleted, opt: true, def: false);
  static bool? _$isPaid(OrderSearchModel v) => v.isPaid;
  static const Field<OrderSearchModel, bool> _f$isPaid =
      Field('isPaid', _$isPaid, opt: true, def: false);
  static int? _$orderCreatedTime(OrderSearchModel v) => v.orderCreatedTime;
  static const Field<OrderSearchModel, int> _f$orderCreatedTime =
      Field('orderCreatedTime', _$orderCreatedTime, opt: true);
  static String? _$status(OrderSearchModel v) => v.status;
  static const Field<OrderSearchModel, String> _f$status =
      Field('status', _$status, opt: true);
  static String? _$orderCreatedBy(OrderSearchModel v) => v.orderCreatedBy;
  static const Field<OrderSearchModel, String> _f$orderCreatedBy =
      Field('orderCreatedBy', _$orderCreatedBy, opt: true);

  @override
  final MappableFields<OrderSearchModel> fields = const {
    #id: _f$id,
    #tableNo: _f$tableNo,
    #room: _f$room,
    #isDeleted: _f$isDeleted,
    #isPaid: _f$isPaid,
    #orderCreatedTime: _f$orderCreatedTime,
    #status: _f$status,
    #orderCreatedBy: _f$orderCreatedBy,
  };
  @override
  final bool ignoreNull = true;

  static OrderSearchModel _instantiate(DecodingData data) {
    return OrderSearchModel(
        id: data.dec(_f$id),
        tableNo: data.dec(_f$tableNo),
        room: data.dec(_f$room),
        isDeleted: data.dec(_f$isDeleted),
        isPaid: data.dec(_f$isPaid),
        orderCreatedTime: data.dec(_f$orderCreatedTime),
        status: data.dec(_f$status),
        orderCreatedBy: data.dec(_f$orderCreatedBy));
  }

  @override
  final Function instantiate = _instantiate;

  static OrderSearchModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OrderSearchModel>(map);
  }

  static OrderSearchModel fromJson(String json) {
    return ensureInitialized().decodeJson<OrderSearchModel>(json);
  }
}

mixin OrderSearchModelMappable {
  String toJson() {
    return OrderSearchModelMapper.ensureInitialized()
        .encodeJson<OrderSearchModel>(this as OrderSearchModel);
  }

  Map<String, dynamic> toMap() {
    return OrderSearchModelMapper.ensureInitialized()
        .encodeMap<OrderSearchModel>(this as OrderSearchModel);
  }

  OrderSearchModelCopyWith<OrderSearchModel, OrderSearchModel, OrderSearchModel>
      get copyWith => _OrderSearchModelCopyWithImpl(
          this as OrderSearchModel, $identity, $identity);
  @override
  String toString() {
    return OrderSearchModelMapper.ensureInitialized()
        .stringifyValue(this as OrderSearchModel);
  }

  @override
  bool operator ==(Object other) {
    return OrderSearchModelMapper.ensureInitialized()
        .equalsValue(this as OrderSearchModel, other);
  }

  @override
  int get hashCode {
    return OrderSearchModelMapper.ensureInitialized()
        .hashValue(this as OrderSearchModel);
  }
}

extension OrderSearchModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OrderSearchModel, $Out> {
  OrderSearchModelCopyWith<$R, OrderSearchModel, $Out>
      get $asOrderSearchModel =>
          $base.as((v, t, t2) => _OrderSearchModelCopyWithImpl(v, t, t2));
}

abstract class OrderSearchModelCopyWith<$R, $In extends OrderSearchModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get id;
  $R call(
      {List<String>? id,
      String? tableNo,
      String? room,
      bool? isDeleted,
      bool? isPaid,
      int? orderCreatedTime,
      String? status,
      String? orderCreatedBy});
  OrderSearchModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _OrderSearchModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OrderSearchModel, $Out>
    implements OrderSearchModelCopyWith<$R, OrderSearchModel, $Out> {
  _OrderSearchModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OrderSearchModel> $mapper =
      OrderSearchModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get id =>
      $value.id != null
          ? ListCopyWith($value.id!, (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(id: v))
          : null;
  @override
  $R call(
          {Object? id = $none,
          Object? tableNo = $none,
          Object? room = $none,
          Object? isDeleted = $none,
          Object? isPaid = $none,
          Object? orderCreatedTime = $none,
          Object? status = $none,
          Object? orderCreatedBy = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (tableNo != $none) #tableNo: tableNo,
        if (room != $none) #room: room,
        if (isDeleted != $none) #isDeleted: isDeleted,
        if (isPaid != $none) #isPaid: isPaid,
        if (orderCreatedTime != $none) #orderCreatedTime: orderCreatedTime,
        if (status != $none) #status: status,
        if (orderCreatedBy != $none) #orderCreatedBy: orderCreatedBy
      }));
  @override
  OrderSearchModel $make(CopyWithData data) => OrderSearchModel(
      id: data.get(#id, or: $value.id),
      tableNo: data.get(#tableNo, or: $value.tableNo),
      room: data.get(#room, or: $value.room),
      isDeleted: data.get(#isDeleted, or: $value.isDeleted),
      isPaid: data.get(#isPaid, or: $value.isPaid),
      orderCreatedTime:
          data.get(#orderCreatedTime, or: $value.orderCreatedTime),
      status: data.get(#status, or: $value.status),
      orderCreatedBy: data.get(#orderCreatedBy, or: $value.orderCreatedBy));

  @override
  OrderSearchModelCopyWith<$R2, OrderSearchModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OrderSearchModelCopyWithImpl($value, $cast, t);
}

class OrderModelMapper extends ClassMapperBase<OrderModel> {
  OrderModelMapper._();

  static OrderModelMapper? _instance;
  static OrderModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrderModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'OrderModel';

  static String? _$id(OrderModel v) => v.id;
  static const Field<OrderModel, String> _f$id = Field('id', _$id, opt: true);
  static String? _$tableNo(OrderModel v) => v.tableNo;
  static const Field<OrderModel, String> _f$tableNo =
      Field('tableNo', _$tableNo, opt: true);
  static String? _$room(OrderModel v) => v.room;
  static const Field<OrderModel, String> _f$room =
      Field('room', _$room, opt: true);
  static bool? _$isDeleted(OrderModel v) => v.isDeleted;
  static const Field<OrderModel, bool> _f$isDeleted =
      Field('isDeleted', _$isDeleted, opt: true, def: false);
  static bool? _$isPaid(OrderModel v) => v.isPaid;
  static const Field<OrderModel, bool> _f$isPaid =
      Field('isPaid', _$isPaid, opt: true, def: false);
  static int? _$orderCreatedTime(OrderModel v) => v.orderCreatedTime;
  static const Field<OrderModel, int> _f$orderCreatedTime =
      Field('orderCreatedTime', _$orderCreatedTime, opt: true);
  static String? _$orderCreatedBy(OrderModel v) => v.orderCreatedBy;
  static const Field<OrderModel, String> _f$orderCreatedBy =
      Field('orderCreatedBy', _$orderCreatedBy, opt: true);
  static String? _$itemName(OrderModel v) => v.itemName;
  static const Field<OrderModel, String> _f$itemName =
      Field('itemName', _$itemName, opt: true);
  static int? _$quantity(OrderModel v) => v.quantity;
  static const Field<OrderModel, int> _f$quantity =
      Field('quantity', _$quantity, opt: true, def: 0);
  static String? _$status(OrderModel v) => v.status;
  static const Field<OrderModel, String> _f$status =
      Field('status', _$status, opt: true);
  static double? _$price(OrderModel v) => v.price;
  static const Field<OrderModel, double> _f$price =
      Field('price', _$price, opt: true);

  @override
  final MappableFields<OrderModel> fields = const {
    #id: _f$id,
    #tableNo: _f$tableNo,
    #room: _f$room,
    #isDeleted: _f$isDeleted,
    #isPaid: _f$isPaid,
    #orderCreatedTime: _f$orderCreatedTime,
    #orderCreatedBy: _f$orderCreatedBy,
    #itemName: _f$itemName,
    #quantity: _f$quantity,
    #status: _f$status,
    #price: _f$price,
  };
  @override
  final bool ignoreNull = true;

  static OrderModel _instantiate(DecodingData data) {
    return OrderModel(
        id: data.dec(_f$id),
        tableNo: data.dec(_f$tableNo),
        room: data.dec(_f$room),
        isDeleted: data.dec(_f$isDeleted),
        isPaid: data.dec(_f$isPaid),
        orderCreatedTime: data.dec(_f$orderCreatedTime),
        orderCreatedBy: data.dec(_f$orderCreatedBy),
        itemName: data.dec(_f$itemName),
        quantity: data.dec(_f$quantity),
        status: data.dec(_f$status),
        price: data.dec(_f$price));
  }

  @override
  final Function instantiate = _instantiate;

  static OrderModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OrderModel>(map);
  }

  static OrderModel fromJson(String json) {
    return ensureInitialized().decodeJson<OrderModel>(json);
  }
}

mixin OrderModelMappable {
  String toJson() {
    return OrderModelMapper.ensureInitialized()
        .encodeJson<OrderModel>(this as OrderModel);
  }

  Map<String, dynamic> toMap() {
    return OrderModelMapper.ensureInitialized()
        .encodeMap<OrderModel>(this as OrderModel);
  }

  OrderModelCopyWith<OrderModel, OrderModel, OrderModel> get copyWith =>
      _OrderModelCopyWithImpl(this as OrderModel, $identity, $identity);
  @override
  String toString() {
    return OrderModelMapper.ensureInitialized()
        .stringifyValue(this as OrderModel);
  }

  @override
  bool operator ==(Object other) {
    return OrderModelMapper.ensureInitialized()
        .equalsValue(this as OrderModel, other);
  }

  @override
  int get hashCode {
    return OrderModelMapper.ensureInitialized().hashValue(this as OrderModel);
  }
}

extension OrderModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OrderModel, $Out> {
  OrderModelCopyWith<$R, OrderModel, $Out> get $asOrderModel =>
      $base.as((v, t, t2) => _OrderModelCopyWithImpl(v, t, t2));
}

abstract class OrderModelCopyWith<$R, $In extends OrderModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? tableNo,
      String? room,
      bool? isDeleted,
      bool? isPaid,
      int? orderCreatedTime,
      String? orderCreatedBy,
      String? itemName,
      int? quantity,
      String? status,
      double? price});
  OrderModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OrderModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OrderModel, $Out>
    implements OrderModelCopyWith<$R, OrderModel, $Out> {
  _OrderModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OrderModel> $mapper =
      OrderModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          Object? tableNo = $none,
          Object? room = $none,
          Object? isDeleted = $none,
          Object? isPaid = $none,
          Object? orderCreatedTime = $none,
          Object? orderCreatedBy = $none,
          Object? itemName = $none,
          Object? quantity = $none,
          Object? status = $none,
          Object? price = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (tableNo != $none) #tableNo: tableNo,
        if (room != $none) #room: room,
        if (isDeleted != $none) #isDeleted: isDeleted,
        if (isPaid != $none) #isPaid: isPaid,
        if (orderCreatedTime != $none) #orderCreatedTime: orderCreatedTime,
        if (orderCreatedBy != $none) #orderCreatedBy: orderCreatedBy,
        if (itemName != $none) #itemName: itemName,
        if (quantity != $none) #quantity: quantity,
        if (status != $none) #status: status,
        if (price != $none) #price: price
      }));
  @override
  OrderModel $make(CopyWithData data) => OrderModel(
      id: data.get(#id, or: $value.id),
      tableNo: data.get(#tableNo, or: $value.tableNo),
      room: data.get(#room, or: $value.room),
      isDeleted: data.get(#isDeleted, or: $value.isDeleted),
      isPaid: data.get(#isPaid, or: $value.isPaid),
      orderCreatedTime:
          data.get(#orderCreatedTime, or: $value.orderCreatedTime),
      orderCreatedBy: data.get(#orderCreatedBy, or: $value.orderCreatedBy),
      itemName: data.get(#itemName, or: $value.itemName),
      quantity: data.get(#quantity, or: $value.quantity),
      status: data.get(#status, or: $value.status),
      price: data.get(#price, or: $value.price));

  @override
  OrderModelCopyWith<$R2, OrderModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OrderModelCopyWithImpl($value, $cast, t);
}
