// Generated using mason. Do not modify by hand

import 'package:drift/drift.dart';

@DataClassName('DiningTable')
class TableDining extends Table {
  TextColumn get id => text().nullable()();
  TextColumn get tableNo => text().nullable()();
  TextColumn get room => text().nullable()();
  BoolColumn get isBusy =>
      boolean().nullable().withDefault(const Constant(false))();
  BoolColumn get isPaid =>
      boolean().nullable().withDefault(const Constant(false))();
  IntColumn get tableStartedAt => integer().nullable()();
  IntColumn get tableEndedAt => integer().nullable()();
  BoolColumn get isDeleted =>
      boolean().nullable().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {tableNo, room};
}
