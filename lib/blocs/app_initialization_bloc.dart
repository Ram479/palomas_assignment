// part 'auth.freezed.dart' need to be added to auto generate the files for freezed model
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:palomas_assignment/models/dining_table_model.dart';
import 'package:palomas_assignment/models/room_model.dart';

import '../data/local_repositories/dining_table.dart';
import '../data/local_repositories/rooms.dart';

part 'app_initialization_bloc.freezed.dart';

typedef AppInitializationEmitter = Emitter<AppInitializationState>;

class AppInitializationBloc
    extends Bloc<AppInitializationEvent, AppInitializationState> {
  final DiningTableLocalRepository diningTableLocalRepository;
  final RoomLocalRepository roomLocalRepository;
  AppInitializationBloc(
    super.initialState, {
    required this.diningTableLocalRepository,
    required this.roomLocalRepository,
  }) {
    on(_appInitialization);
  }
  FutureOr<void> _appInitialization(
    InitializeAppEvent event,
    AppInitializationEmitter emit,
  ) async {
    try {
      emit(const AppInitializationState.loading());
      Map<String, dynamic> roomsMap = {
        "rooms": [
          {"name": "Default", "code": "D1"},
          {"name": "Room 1", "code": "R1"},
          {"name": "Room 2", "code": "R2"}
        ]
      };

      // Extract the list of rooms from the map
      List<dynamic> roomsJson = roomsMap['rooms'];

      // Convert the JSON list to a List<Room>
      List<RoomModel> rooms =
          roomsJson.map((room) => RoomModelMapper.fromMap(room)).toList();
      await roomLocalRepository.bulkCreate(rooms);
      Map<String, dynamic> diningTablesMap = {
        "diningTables": [
          {"tableNo": "T1", "room": "DEFAULT", "id": "T1_DEFAULT"},
          {"tableNo": "T2", "room": "DEFAULT", "id": "T2_DEFAULT"},
          {"tableNo": "T3", "room": "DEFAULT", "id": "T3_DEFAULT"},
          {"tableNo": "T4", "room": "DEFAULT", "id": "T4_DEFAULT"},
          {"tableNo": "T5", "room": "DEFAULT", "id": "T5_DEFAULT"},
          {"tableNo": "T6", "room": "R1", "id": "T6_R1"},
          {"tableNo": "T7", "room": "R1", "id": "T7_R1"},
          {"tableNo": "T8", "room": "R1", "id": "T8_R1"},
          {"tableNo": "T9", "room": "R1", "id": "T9_R1"},
          {"tableNo": "T10", "room": "R1", "id": "T10_R1"},
          {"tableNo": "T11", "room": "R2", "id": "T11_R2"},
          {"tableNo": "T12", "room": "R2", "id": "T12_R2"},
          {"tableNo": "T13", "room": "R2", "id": "T13_R2"},
          {"tableNo": "T14", "room": "R2", "id": "T14_R2"},
          {"tableNo": "T15", "room": "R2", "id": "T15_R2"},
        ]
      };

      // Extract the list of rooms from the map
      List<dynamic> diningTablesJson = diningTablesMap['diningTables'];

      // Convert the JSON list to a List<Room>
      List<DiningTableModel> diningTables = diningTablesJson
          .map((d) => DiningTableModelMapper.fromMap(d))
          .toList();
      await diningTableLocalRepository.bulkCreate(diningTables);
      emit(AppInitializationState.completed(
        rooms: rooms,
      ));
    } catch (error) {
      emit(const AppInitializationState.loading());
      rethrow;
    } finally {}
  }
}

@freezed
class AppInitializationEvent with _$AppInitializationEvent {
  const factory AppInitializationEvent.appInitialization() = InitializeAppEvent;
}

@freezed
class AppInitializationState with _$AppInitializationState {
  const factory AppInitializationState.loading() =
      _AppInitializationLoadingState;
  const factory AppInitializationState.completed(
      {@Default([]) List<RoomModel>? rooms}) = _AppInitializationCompletedState;
}
