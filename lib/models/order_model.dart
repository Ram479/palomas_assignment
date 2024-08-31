// Generated using mason. Do not modify by hand
import 'package:dart_mappable/dart_mappable.dart';
import 'package:drift/drift.dart';
import 'package:palomas_assignment/data/sql/sql_store.dart';

part 'order_model.mapper.dart';

@MappableClass(ignoreNull: true, discriminatorValue: MappableClass.useAsDefault)
class OrderSearchModel with OrderSearchModelMappable {
  final List<String>? id;
  final String? tableNo;
  final String? room;
  final bool? isDeleted;
  final bool? isPaid;
  final String? status;
  final int? orderCreatedTime;
  final String? orderCreatedBy;

  OrderSearchModel({
    this.id,
    this.tableNo,
    this.room,
    this.isDeleted = false,
    this.isPaid = false,
    this.orderCreatedTime,
    this.status,
    this.orderCreatedBy,
  }) : super();
}

//
// @MappableClass()
// class OrderList with OrderListMappable{
//   List<>
// }

@MappableClass(ignoreNull: true, discriminatorValue: MappableClass.useAsDefault)
class OrderModel with OrderModelMappable {
  static const schemaName = 'Order';

  final String? id;
  final String? tableNo;
  final String? room;
  final String? itemName;
  final int? quantity;
  final double? price;
  final bool? isDeleted;
  final bool? isPaid;
  final int? orderCreatedTime;
  final String? orderCreatedBy;
  final String? status;

  OrderModel({
    this.id,
    this.tableNo,
    this.room,
    this.isDeleted = false,
    this.isPaid = false,
    this.orderCreatedTime,
    this.orderCreatedBy,
    this.itemName,
    this.quantity = 0,
    this.status,
    this.price,
  }) : super();

  TableOrderCompanion get companion {
    return TableOrderCompanion(
        id: Value(id),
        tableNo: Value(tableNo),
        room: Value(room),
        isPaid: Value(isPaid),
        isDeleted: Value(isDeleted),
        orderCreatedTime: Value(orderCreatedTime),
        orderCreatedBy: Value(orderCreatedBy),
        status: Value(status),
        itemName: Value(itemName),
        quantity: Value(quantity),
        price: Value(price));
  }
}
