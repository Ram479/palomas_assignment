import 'dart:async';

import 'package:drift/drift.dart';
import 'package:palomas_assignment/models/dining_table_model.dart';

import '../../utils/utils.dart';
import '../sql/sql_store.dart';

class DiningTableLocalRepository {
  final LocalSqlDataStore sql;
  DiningTableLocalRepository(
    this.sql,
  );

  FutureOr<List<DiningTableModel>> search(
    DiningTableSearchModel query, [
    String? userId,
  ]) async {
    final selectQuery = sql.select(sql.tableDining).join(
      [],
    );

    (selectQuery
      ..where(
        buildAnd(
          [
            if (query.tableNo != null)
              sql.tableDining.tableNo.equals(query.tableNo!),
            if (query.room != null)
              sql.tableDining.room.equals(
                query.room!,
              ),
            if (query.room != null)
              sql.tableDining.room.equals(
                query.room!,
              ),
            if (query.id != null) sql.tableDining.id.isIn(query.id!),
          ],
        ),
      ));

    final results = await selectQuery.get();

    return results
        .map((e) {
          final diningTable = e.readTable(sql.tableDining);

          return DiningTableModel(
            id: diningTable.id,
            room: diningTable.room,
            tableNo: diningTable.tableNo,
            isPaid: diningTable.isPaid,
            isBusy: diningTable.isBusy,
            isDeleted: diningTable.isDeleted,
            tableEndedAt: diningTable.tableEndedAt,
            tableStartedAt: diningTable.tableStartedAt,
          );
        })
        .where((element) => element.isDeleted != true)
        .toList();
  }

  FutureOr<void> create(
    DiningTableModel entity, {
    bool createOpLog = true,
  }) async {
    final diningTableCompanion = entity.companion;

    await sql.batch((batch) async {
      batch.insert(
        sql.tableDining,
        diningTableCompanion,
        mode: InsertMode.insertOrReplace,
      );
    });
  }

  FutureOr<void> bulkCreate(
    List<DiningTableModel> entities,
  ) async {
    final diningTableCompanions = entities.map((e) => e.companion).toList();

    await sql.batch((batch) async {
      batch.insertAll(
        sql.tableDining,
        diningTableCompanions,
        mode: InsertMode.insertOrReplace,
      );
    });
  }

  FutureOr<void> update(
    DiningTableModel entity, {
    bool createOpLog = true,
  }) async {
    final diningTableCompanion = entity.companion;

    await sql.batch((batch) async {
      batch.update(
        sql.tableDining,
        diningTableCompanion,
        where: (table) => table.id.equals(
          entity.id.toString(),
        ),
      );
    });
  }

  FutureOr<void> delete(
    DiningTableModel entity, {
    bool createOpLog = true,
  }) async {
    final updated = entity.copyWith(
      isDeleted: true,
    );
    await sql.batch((batch) {
      batch.update(
        sql.tableDining,
        updated.companion,
        where: (table) => table.tableNo.equals(
          entity.tableNo.toString(),
        ),
      );
    });
  }
}
