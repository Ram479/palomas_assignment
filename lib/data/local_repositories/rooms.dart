import 'dart:async';

import 'package:drift/drift.dart';

import '../../models/room_model.dart';
import '../../utils/utils.dart';
import '../sql/sql_store.dart';

class RoomLocalRepository {
  final LocalSqlDataStore sql;
  RoomLocalRepository(
    this.sql,
  );

  FutureOr<List<RoomModel>> search(
    RoomSearchModel query, [
    String? userId,
  ]) async {
    final selectQuery = sql.select(sql.diningRoom).join(
      [],
    );

    (selectQuery
      ..where(
        buildAnd(
          [
            if (query.name != null) sql.diningRoom.name.equals(query.name!),
            if (query.code != null)
              sql.diningRoom.code.equals(
                query.code!,
              ),
          ],
        ),
      ));

    final results = await selectQuery.get();

    return results.map((e) {
      final room = e.readTable(sql.diningRoom);

      return RoomModel(
        name: room.name,
        code: room.code,
      );
    }).toList();
  }

  FutureOr<void> create(
    RoomModel entity, {
    bool createOpLog = true,
  }) async {
    final roomCompanion = entity.companion;

    await sql.batch((batch) async {
      batch.insert(
        sql.diningRoom,
        roomCompanion,
        mode: InsertMode.insertOrReplace,
      );
    });
  }

  FutureOr<void> bulkCreate(
    List<RoomModel> entities,
  ) async {
    final roomCompanions = entities.map((e) => e.companion).toList();

    await sql.batch((batch) async {
      batch.insertAll(
        sql.diningRoom,
        roomCompanions,
        mode: InsertMode.insertOrReplace,
      );
    });
  }

  FutureOr<void> update(
    RoomModel entity, {
    bool createOpLog = true,
  }) async {
    final roomCompanion = entity.companion;

    await sql.batch((batch) async {
      batch.update(
        sql.diningRoom,
        roomCompanion,
        where: (room) => room.code.equals(
          entity.code.toString(),
        ),
      );
    });
  }
}
