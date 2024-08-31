// Generated using mason. Do not modify by hand

import 'package:drift/drift.dart';

@DataClassName('Order')
class TableOrder extends Table {
  TextColumn get id => text().nullable()();
  TextColumn get tableNo => text().nullable()();
  TextColumn get room => text().nullable()();
  TextColumn get itemName => text().nullable()();
  IntColumn get quantity => integer().nullable()();
  RealColumn get price => real().nullable()();
  IntColumn get orderCreatedTime => integer().nullable()();
  TextColumn get orderCreatedBy => text().nullable()();
  BoolColumn get isDeleted =>
      boolean().nullable().withDefault(const Constant(false))();
  BoolColumn get isPaid =>
      boolean().nullable().withDefault(const Constant(true))();
  TextColumn get status => text().nullable()();
  @override
  Set<Column> get primaryKey => {
        id,
      };
}
