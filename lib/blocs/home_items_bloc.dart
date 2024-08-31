// part 'auth.freezed.dart' need to be added to auto generate the files for freezed model
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:palomas_assignment/models/dining_table_model.dart';

import '../data/local_repositories/dining_table.dart';

part 'home_items_bloc.freezed.dart';

typedef HomeItemsEmitter = Emitter<HomeItemsState>;

class HomeItemsBloc extends Bloc<HomeItemsEvent, HomeItemsState> {
  final DiningTableLocalRepository diningTableLocalRepository;
  HomeItemsBloc(
    super.initialState, {
    required this.diningTableLocalRepository,
  }) {
    on(_getHomeItems);
  }
  FutureOr<void> _getHomeItems(
    GetHomeItemsEvent event,
    HomeItemsEmitter emit,
  ) async {
    try {
      emit(state.copyWith(loading: true));
      List<DiningTableModel> diningTables = await diningTableLocalRepository
          .search(DiningTableSearchModel(room: event.roomCode));
      emit(state.copyWith(
        homeItems: diningTables,
      ));
    } catch (error) {
      rethrow;
    } finally {
      emit(state.copyWith(loading: false));
    }
  }
}

@freezed
class HomeItemsEvent with _$HomeItemsEvent {
  const factory HomeItemsEvent.getHomeItems(
      {@Default('DEFAULT') String? roomCode}) = GetHomeItemsEvent;
}

@freezed
class HomeItemsState with _$HomeItemsState {
  const factory HomeItemsState({
    @Default([]) List<DiningTableModel> homeItems,
    @Default(false) bool loading,
  }) = _HomeItemsState;
}
