// part 'auth.freezed.dart' need to be added to auto generate the files for freezed model
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:palomas_assignment/models/dining_table_model.dart';

import '../data/local_repositories/dining_table.dart';
import '../data/local_repositories/orderr.dart';
import '../data/local_secure_store.dart';
import '../models/order_model.dart';

part 'create_order_bloc.freezed.dart';

typedef CreateOrderEmitter = Emitter<CreateOrderState>;

class CreateOrderBloc extends Bloc<CreateOrderEvent, CreateOrderState> {
  final DiningTableLocalRepository diningTableLocalRepository;
  final OrderLocalRepository orderLocalRepository;
  final LocalSecureStore localSecureStore;
  CreateOrderBloc({
    required this.diningTableLocalRepository,
    required this.orderLocalRepository,
    LocalSecureStore? localSecureStore,
  })  : localSecureStore = LocalSecureStore.instance,
        super(const CreateOrderState()) {
    on(_createOrder);
  }
  FutureOr<void> _createOrder(
    TakeOrderEvent event,
    CreateOrderEmitter emit,
  ) async {
    try {
      final diningTable = await diningTableLocalRepository
          .search(DiningTableSearchModel(id: [event.tableID]));
      for (OrderModel order in event.orders) {
        await localSecureStore.incrementOrderSequence();
        final orderSequence = await localSecureStore.orderIDSequence;
        await orderLocalRepository.create(order.copyWith(
          id: '${order.id}_$orderSequence',
        ));
      }
      await diningTableLocalRepository.update(diningTable.first.copyWith(
        tableStartedAt: event.orders.first.orderCreatedTime,
        tableEndedAt: null,
        isBusy: true,
        isPaid: false,
      ));
      emit(state.copyWith(ordersTaken: event.orders));
    } catch (error) {
      rethrow;
    } finally {
      // emit(state.copyWith(loading: false));
    }
  }
}

@freezed
class CreateOrderEvent with _$CreateOrderEvent {
  const factory CreateOrderEvent.takeOrder({
    required String tableID,
    required List<OrderModel> orders,
  }) = TakeOrderEvent;
}

@freezed
class CreateOrderState with _$CreateOrderState {
  const factory CreateOrderState({
    @Default([]) List<OrderModel> ordersTaken,
  }) = _CreateOrderState;
}
