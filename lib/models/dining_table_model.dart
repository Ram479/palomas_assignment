// Generated using mason. Do not modify by hand
import 'package:dart_mappable/dart_mappable.dart';
import 'package:drift/drift.dart';

import '../data/sql/sql_store.dart';

part 'dining_table_model.mapper.dart';

@MappableClass(ignoreNull: true, discriminatorValue: MappableClass.useAsDefault)
class DiningTableSearchModel with DiningTableSearchModelMappable {
  final List<String>? id;
  final String? tableNo;
  final String? room;
  final bool? isPaid;
  final bool? isBusy;
  final bool? isDeleted;
  final int? tableStartedAt;
  final int? tableEndedAt;
  DiningTableSearchModel({
    this.id,
    this.tableNo,
    this.room,
    this.isBusy = false,
    this.isPaid = true,
    this.isDeleted = false,
    this.tableStartedAt,
    this.tableEndedAt,
  }) : super();
}

//
// @MappableClass()
// class DiningTableList with DiningTableListMappable{
//   List<>
// }

@MappableClass(ignoreNull: true, discriminatorValue: MappableClass.useAsDefault)
class DiningTableModel with DiningTableModelMappable {
  static const schemaName = 'DiningTable';

  final String? id;
  final String? tableNo;
  final String? room;
  final bool? isPaid;
  final bool? isBusy;
  final bool? isDeleted;
  final int? tableStartedAt;
  final int? tableEndedAt;

  DiningTableModel({
    this.id,
    this.tableNo,
    this.room,
    this.isDeleted = false,
    this.isBusy = false,
    this.isPaid = true,
    this.tableStartedAt,
    this.tableEndedAt,
  }) : super();

  TableDiningCompanion get companion {
    return TableDiningCompanion(
      id: Value(id),
      tableNo: Value(tableNo),
      room: Value(room),
      isBusy: Value(isBusy),
      isPaid: Value(isPaid),
      isDeleted: Value(isDeleted),
      tableStartedAt: Value(tableStartedAt),
      tableEndedAt: Value(tableEndedAt),
    );
  }
}
