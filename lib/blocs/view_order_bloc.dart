// part 'auth.freezed.dart' need to be added to auto generate the files for freezed model
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:palomas_assignment/models/dining_table_model.dart';

import '../data/local_repositories/dining_table.dart';
import '../data/local_repositories/orderr.dart';
import '../models/order_model.dart';

part 'view_order_bloc.freezed.dart';

typedef ViewOrdersEmitter = Emitter<ViewOrdersState>;

class ViewOrdersBloc extends Bloc<ViewOrdersEvent, ViewOrdersState> {
  final OrderLocalRepository orderLocalRepository;
  final DiningTableLocalRepository diningTableLocalRepository;

  ViewOrdersBloc(
    super.initialState, {
    required this.orderLocalRepository,
    required this.diningTableLocalRepository,
  }) {
    on(_getViewOrders);
    on(_markOrderPaidEvent);
  }

  FutureOr<void> _markOrderPaidEvent(
    MarkOrderPaidEvent event,
    ViewOrdersEmitter emit,
  ) async {
    try {
      final tables =
          await diningTableLocalRepository.search(DiningTableSearchModel(id: [
        event.tableID,
      ]));
      for (OrderModel order in event.orderList.orders) {
        await orderLocalRepository
            .update(order.copyWith(isPaid: true, status: 'Completed'));
      }
      for (DiningTableModel dineTable in tables) {
        await diningTableLocalRepository.update(dineTable.copyWith(
          tableEndedAt: DateTime.now().millisecondsSinceEpoch,
          isPaid: true,
          isBusy: false,
        ));
      }
      add(const GetViewOrdersEvent());
    } catch (error) {
      rethrow;
    }
  }

  FutureOr<void> _getViewOrders(
    GetViewOrdersEvent event,
    ViewOrdersEmitter emit,
  ) async {
    try {
      emit(state.copyWith(loading: true));

      final orders = await orderLocalRepository.search(OrderSearchModel(
        status: event.status,
      ));
      final orderList = groupOrdersByTableAndRoom(orders);
      emit(state.copyWith(orderList: orderList, loading: false));
    } catch (error) {
      rethrow;
    } finally {
      emit(state.copyWith(loading: false));
    }
  }
}

@freezed
class ViewOrdersEvent with _$ViewOrdersEvent {
  const factory ViewOrdersEvent.getViewOrders(
      {@Default('In Progress') String? status}) = GetViewOrdersEvent;
  const factory ViewOrdersEvent.markBillAsPaid({
    required OrderWrapper orderList,
    required String tableID,
  }) = MarkOrderPaidEvent;
}

@freezed
class ViewOrdersState with _$ViewOrdersState {
  const factory ViewOrdersState({
    @Default([]) List<OrderWrapper> orderList,
    @Default(false) bool loading,
  }) = _ViewOrdersState;
}

List<OrderWrapper> groupOrdersByTableAndRoom(List<OrderModel> orders) {
  // Group orders by tableNo and room
  var groupedOrders = <String, List<OrderModel>>{};

  for (var order in orders) {
    var tableId = '${order.tableNo}_${order.room}';
    if (!groupedOrders.containsKey(tableId)) {
      groupedOrders[tableId] = [];
    }
    groupedOrders[tableId]!.add(order);
  }

  // Create OrderWrapper objects
  return groupedOrders.entries.map((entry) {
    // Calculate the total bill amount
    double billAmount = entry.value.fold(0.0, (sum, order) {
      return sum + (order.price ?? 0) * (order.quantity ?? 0);
    });

    return OrderWrapper(
      tableId: entry.key,
      orders: entry.value,
      billAmount: billAmount
          .toStringAsFixed(2), // Convert to string with 2 decimal places
    );
  }).toList();
}

class OrderWrapper {
  final String tableId;
  final List<OrderModel> orders;
  final String billAmount;

  OrderWrapper({
    required this.tableId,
    this.orders = const [],
    required this.billAmount,
  });
}
