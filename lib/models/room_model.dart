// Generated using mason. Do not modify by hand
import 'package:dart_mappable/dart_mappable.dart';
import 'package:drift/drift.dart';

import '../data/sql/sql_store.dart';

part 'room_model.mapper.dart';

@MappableClass(ignoreNull: true, discriminatorValue: MappableClass.useAsDefault)
class RoomSearchModel with RoomSearchModelMappable {
  final String? name;
  final String? code;

  RoomSearchModel({
    this.name,
    this.code,
  }) : super();
}

@MappableClass(ignoreNull: true, discriminatorValue: MappableClass.useAsDefault)
class RoomModel with RoomModelMappable {
  static const schemaName = 'DiningRoom';

  final String? name;
  final String? code;

  RoomModel({
    this.name,
    this.code,
  }) : super();

  DiningRoomCompanion get companion {
    return DiningRoomCompanion(
      name: Value(name),
      code: Value(code),
    );
  }
}
