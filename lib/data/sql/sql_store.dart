// Importing necessary packages and files.
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:palomas_assignment/data/sql/tables/order.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'tables/dining_table.dart';
import 'tables/room.dart';

// Part directive for the generated code.
part 'sql_store.g.dart';

/// The `LocalSqlDataStore` class represents the local SQL data store.
/// It is annotated with `@DriftDatabase` to indicate that it is a Drift database.
/// The `tables` parameter of the `@DriftDatabase` annotation lists all the tables in the database.
@DriftDatabase(tables: [
  TableDining,
  DiningRoom,
  TableOrder,
])
class LocalSqlDataStore extends _$LocalSqlDataStore {
  /// The constructor for `LocalSqlDataStore`.
  /// It calls the superclass constructor with `_openConnection()` as the argument.
  LocalSqlDataStore() : super(_openConnection());

  /// The `schemaVersion` getter returns the schema version of the database.
  @override
  int get schemaVersion => 4;

  /// The `_openConnection` method opens a connection to the database.
  /// It returns a `LazyDatabase` that opens the database when it is first accessed.
  static LazyDatabase _openConnection() {
    return LazyDatabase(() async {
      // Get the application documents directory.
      final dbFolder = await getApplicationDocumentsDirectory();
      // Create a file in the documents directory for the database.
      final file = File(p.join(dbFolder.path, 'db.sqlite'));

      // Return a `NativeDatabase` that uses the file for storage.
      return NativeDatabase(file, logStatements: true, setup: (data) {});
    });
  }
}
