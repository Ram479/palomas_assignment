// Generated using mason. Do not modify by hand

import 'package:drift/drift.dart';

@DataClassName('Room')
class DiningRoom extends Table {
  TextColumn get code => text().nullable()();
  TextColumn get name => text().nullable()();
  BoolColumn get isDeleted =>
      boolean().nullable().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {
        code,
        name,
      };
}
