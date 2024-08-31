import 'dart:async';

import 'package:drift/drift.dart';

import '../../models/order_model.dart';
import '../../utils/utils.dart';
import '../sql/sql_store.dart';

class OrderLocalRepository {
  final LocalSqlDataStore sql;
  OrderLocalRepository(
    this.sql,
  );

  FutureOr<List<OrderModel>> search(
    OrderSearchModel query, [
    String? userId,
  ]) async {
    final selectQuery = sql.select(sql.tableOrder).join(
      [],
    );

    (selectQuery
      ..where(
        buildAnd(
          [
            if (query.tableNo != null)
              sql.tableOrder.tableNo.equals(query.tableNo!),
            if (query.room != null)
              sql.tableOrder.room.equals(
                query.room!,
              ),
            if (query.status != null)
              sql.tableOrder.status.equals(
                query.status!,
              ),
          ],
        ),
      ));

    final results = await selectQuery.get();

    return results
        .map((e) {
          final order = e.readTable(sql.tableOrder);

          return OrderModel(
            id: order.id,
            room: order.room,
            tableNo: order.tableNo,
            isDeleted: order.isDeleted,
            itemName: order.itemName,
            quantity: order.quantity,
            orderCreatedTime: order.orderCreatedTime,
            orderCreatedBy: order.orderCreatedBy,
            status: order.status,
            price: order.price,
          );
        })
        .where((element) => element.isDeleted != true)
        .toList();
  }

  FutureOr<void> create(
    OrderModel entity, {
    bool createOpLog = true,
  }) async {
    final orderCompanion = entity.companion;

    await sql.batch((batch) async {
      batch.insert(
        sql.tableOrder,
        orderCompanion,
        mode: InsertMode.insertOrReplace,
      );
    });
  }

  FutureOr<void> bulkCreate(
    List<OrderModel> entities,
  ) async {
    final orderCompanions = entities.map((e) => e.companion).toList();

    await sql.batch((batch) async {
      batch.insertAll(
        sql.tableOrder,
        orderCompanions,
        mode: InsertMode.insertOrReplace,
      );
    });
  }

  FutureOr<void> update(
    OrderModel entity, {
    bool createOpLog = true,
  }) async {
    final orderCompanion = entity.companion;

    await sql.batch((batch) async {
      batch.update(
        sql.tableOrder,
        orderCompanion,
        where: (order) => order.id.equals(
          entity.id.toString(),
        ),
      );
    });
  }

  FutureOr<void> delete(
    OrderModel entity, {
    bool createOpLog = true,
  }) async {
    final updated = entity.copyWith(
      isDeleted: true,
    );
    await sql.batch((batch) {
      batch.update(
        sql.tableOrder,
        updated.companion,
        where: (order) => order.id.equals(
          entity.id.toString(),
        ),
      );
    });
  }
}
