// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sql_store.dart';

// ignore_for_file: type=lint
class $TableDiningTable extends TableDining
    with TableInfo<$TableDiningTable, DiningTable> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TableDiningTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tableNoMeta =
      const VerificationMeta('tableNo');
  @override
  late final GeneratedColumn<String> tableNo = GeneratedColumn<String>(
      'table_no', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _roomMeta = const VerificationMeta('room');
  @override
  late final GeneratedColumn<String> room = GeneratedColumn<String>(
      'room', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isBusyMeta = const VerificationMeta('isBusy');
  @override
  late final GeneratedColumn<bool> isBusy = GeneratedColumn<bool>(
      'is_busy', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_busy" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _isPaidMeta = const VerificationMeta('isPaid');
  @override
  late final GeneratedColumn<bool> isPaid = GeneratedColumn<bool>(
      'is_paid', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_paid" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _tableStartedAtMeta =
      const VerificationMeta('tableStartedAt');
  @override
  late final GeneratedColumn<int> tableStartedAt = GeneratedColumn<int>(
      'table_started_at', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _tableEndedAtMeta =
      const VerificationMeta('tableEndedAt');
  @override
  late final GeneratedColumn<int> tableEndedAt = GeneratedColumn<int>(
      'table_ended_at', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _isDeletedMeta =
      const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
      'is_deleted', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_deleted" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        tableNo,
        room,
        isBusy,
        isPaid,
        tableStartedAt,
        tableEndedAt,
        isDeleted
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'table_dining';
  @override
  VerificationContext validateIntegrity(Insertable<DiningTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('table_no')) {
      context.handle(_tableNoMeta,
          tableNo.isAcceptableOrUnknown(data['table_no']!, _tableNoMeta));
    }
    if (data.containsKey('room')) {
      context.handle(
          _roomMeta, room.isAcceptableOrUnknown(data['room']!, _roomMeta));
    }
    if (data.containsKey('is_busy')) {
      context.handle(_isBusyMeta,
          isBusy.isAcceptableOrUnknown(data['is_busy']!, _isBusyMeta));
    }
    if (data.containsKey('is_paid')) {
      context.handle(_isPaidMeta,
          isPaid.isAcceptableOrUnknown(data['is_paid']!, _isPaidMeta));
    }
    if (data.containsKey('table_started_at')) {
      context.handle(
          _tableStartedAtMeta,
          tableStartedAt.isAcceptableOrUnknown(
              data['table_started_at']!, _tableStartedAtMeta));
    }
    if (data.containsKey('table_ended_at')) {
      context.handle(
          _tableEndedAtMeta,
          tableEndedAt.isAcceptableOrUnknown(
              data['table_ended_at']!, _tableEndedAtMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {tableNo, room};
  @override
  DiningTable map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DiningTable(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id']),
      tableNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}table_no']),
      room: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}room']),
      isBusy: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_busy']),
      isPaid: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_paid']),
      tableStartedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}table_started_at']),
      tableEndedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}table_ended_at']),
      isDeleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_deleted']),
    );
  }

  @override
  $TableDiningTable createAlias(String alias) {
    return $TableDiningTable(attachedDatabase, alias);
  }
}

class DiningTable extends DataClass implements Insertable<DiningTable> {
  final String? id;
  final String? tableNo;
  final String? room;
  final bool? isBusy;
  final bool? isPaid;
  final int? tableStartedAt;
  final int? tableEndedAt;
  final bool? isDeleted;
  const DiningTable(
      {this.id,
      this.tableNo,
      this.room,
      this.isBusy,
      this.isPaid,
      this.tableStartedAt,
      this.tableEndedAt,
      this.isDeleted});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || tableNo != null) {
      map['table_no'] = Variable<String>(tableNo);
    }
    if (!nullToAbsent || room != null) {
      map['room'] = Variable<String>(room);
    }
    if (!nullToAbsent || isBusy != null) {
      map['is_busy'] = Variable<bool>(isBusy);
    }
    if (!nullToAbsent || isPaid != null) {
      map['is_paid'] = Variable<bool>(isPaid);
    }
    if (!nullToAbsent || tableStartedAt != null) {
      map['table_started_at'] = Variable<int>(tableStartedAt);
    }
    if (!nullToAbsent || tableEndedAt != null) {
      map['table_ended_at'] = Variable<int>(tableEndedAt);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool>(isDeleted);
    }
    return map;
  }

  TableDiningCompanion toCompanion(bool nullToAbsent) {
    return TableDiningCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      tableNo: tableNo == null && nullToAbsent
          ? const Value.absent()
          : Value(tableNo),
      room: room == null && nullToAbsent ? const Value.absent() : Value(room),
      isBusy:
          isBusy == null && nullToAbsent ? const Value.absent() : Value(isBusy),
      isPaid:
          isPaid == null && nullToAbsent ? const Value.absent() : Value(isPaid),
      tableStartedAt: tableStartedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(tableStartedAt),
      tableEndedAt: tableEndedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(tableEndedAt),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
    );
  }

  factory DiningTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DiningTable(
      id: serializer.fromJson<String?>(json['id']),
      tableNo: serializer.fromJson<String?>(json['tableNo']),
      room: serializer.fromJson<String?>(json['room']),
      isBusy: serializer.fromJson<bool?>(json['isBusy']),
      isPaid: serializer.fromJson<bool?>(json['isPaid']),
      tableStartedAt: serializer.fromJson<int?>(json['tableStartedAt']),
      tableEndedAt: serializer.fromJson<int?>(json['tableEndedAt']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'tableNo': serializer.toJson<String?>(tableNo),
      'room': serializer.toJson<String?>(room),
      'isBusy': serializer.toJson<bool?>(isBusy),
      'isPaid': serializer.toJson<bool?>(isPaid),
      'tableStartedAt': serializer.toJson<int?>(tableStartedAt),
      'tableEndedAt': serializer.toJson<int?>(tableEndedAt),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
    };
  }

  DiningTable copyWith(
          {Value<String?> id = const Value.absent(),
          Value<String?> tableNo = const Value.absent(),
          Value<String?> room = const Value.absent(),
          Value<bool?> isBusy = const Value.absent(),
          Value<bool?> isPaid = const Value.absent(),
          Value<int?> tableStartedAt = const Value.absent(),
          Value<int?> tableEndedAt = const Value.absent(),
          Value<bool?> isDeleted = const Value.absent()}) =>
      DiningTable(
        id: id.present ? id.value : this.id,
        tableNo: tableNo.present ? tableNo.value : this.tableNo,
        room: room.present ? room.value : this.room,
        isBusy: isBusy.present ? isBusy.value : this.isBusy,
        isPaid: isPaid.present ? isPaid.value : this.isPaid,
        tableStartedAt:
            tableStartedAt.present ? tableStartedAt.value : this.tableStartedAt,
        tableEndedAt:
            tableEndedAt.present ? tableEndedAt.value : this.tableEndedAt,
        isDeleted: isDeleted.present ? isDeleted.value : this.isDeleted,
      );
  @override
  String toString() {
    return (StringBuffer('DiningTable(')
          ..write('id: $id, ')
          ..write('tableNo: $tableNo, ')
          ..write('room: $room, ')
          ..write('isBusy: $isBusy, ')
          ..write('isPaid: $isPaid, ')
          ..write('tableStartedAt: $tableStartedAt, ')
          ..write('tableEndedAt: $tableEndedAt, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, tableNo, room, isBusy, isPaid,
      tableStartedAt, tableEndedAt, isDeleted);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DiningTable &&
          other.id == this.id &&
          other.tableNo == this.tableNo &&
          other.room == this.room &&
          other.isBusy == this.isBusy &&
          other.isPaid == this.isPaid &&
          other.tableStartedAt == this.tableStartedAt &&
          other.tableEndedAt == this.tableEndedAt &&
          other.isDeleted == this.isDeleted);
}

class TableDiningCompanion extends UpdateCompanion<DiningTable> {
  final Value<String?> id;
  final Value<String?> tableNo;
  final Value<String?> room;
  final Value<bool?> isBusy;
  final Value<bool?> isPaid;
  final Value<int?> tableStartedAt;
  final Value<int?> tableEndedAt;
  final Value<bool?> isDeleted;
  final Value<int> rowid;
  const TableDiningCompanion({
    this.id = const Value.absent(),
    this.tableNo = const Value.absent(),
    this.room = const Value.absent(),
    this.isBusy = const Value.absent(),
    this.isPaid = const Value.absent(),
    this.tableStartedAt = const Value.absent(),
    this.tableEndedAt = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TableDiningCompanion.insert({
    this.id = const Value.absent(),
    this.tableNo = const Value.absent(),
    this.room = const Value.absent(),
    this.isBusy = const Value.absent(),
    this.isPaid = const Value.absent(),
    this.tableStartedAt = const Value.absent(),
    this.tableEndedAt = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<DiningTable> custom({
    Expression<String>? id,
    Expression<String>? tableNo,
    Expression<String>? room,
    Expression<bool>? isBusy,
    Expression<bool>? isPaid,
    Expression<int>? tableStartedAt,
    Expression<int>? tableEndedAt,
    Expression<bool>? isDeleted,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tableNo != null) 'table_no': tableNo,
      if (room != null) 'room': room,
      if (isBusy != null) 'is_busy': isBusy,
      if (isPaid != null) 'is_paid': isPaid,
      if (tableStartedAt != null) 'table_started_at': tableStartedAt,
      if (tableEndedAt != null) 'table_ended_at': tableEndedAt,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TableDiningCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? tableNo,
      Value<String?>? room,
      Value<bool?>? isBusy,
      Value<bool?>? isPaid,
      Value<int?>? tableStartedAt,
      Value<int?>? tableEndedAt,
      Value<bool?>? isDeleted,
      Value<int>? rowid}) {
    return TableDiningCompanion(
      id: id ?? this.id,
      tableNo: tableNo ?? this.tableNo,
      room: room ?? this.room,
      isBusy: isBusy ?? this.isBusy,
      isPaid: isPaid ?? this.isPaid,
      tableStartedAt: tableStartedAt ?? this.tableStartedAt,
      tableEndedAt: tableEndedAt ?? this.tableEndedAt,
      isDeleted: isDeleted ?? this.isDeleted,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (tableNo.present) {
      map['table_no'] = Variable<String>(tableNo.value);
    }
    if (room.present) {
      map['room'] = Variable<String>(room.value);
    }
    if (isBusy.present) {
      map['is_busy'] = Variable<bool>(isBusy.value);
    }
    if (isPaid.present) {
      map['is_paid'] = Variable<bool>(isPaid.value);
    }
    if (tableStartedAt.present) {
      map['table_started_at'] = Variable<int>(tableStartedAt.value);
    }
    if (tableEndedAt.present) {
      map['table_ended_at'] = Variable<int>(tableEndedAt.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TableDiningCompanion(')
          ..write('id: $id, ')
          ..write('tableNo: $tableNo, ')
          ..write('room: $room, ')
          ..write('isBusy: $isBusy, ')
          ..write('isPaid: $isPaid, ')
          ..write('tableStartedAt: $tableStartedAt, ')
          ..write('tableEndedAt: $tableEndedAt, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DiningRoomTable extends DiningRoom
    with TableInfo<$DiningRoomTable, Room> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DiningRoomTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isDeletedMeta =
      const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
      'is_deleted', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_deleted" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [code, name, isDeleted];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dining_room';
  @override
  VerificationContext validateIntegrity(Insertable<Room> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {code, name};
  @override
  Room map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Room(
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      isDeleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_deleted']),
    );
  }

  @override
  $DiningRoomTable createAlias(String alias) {
    return $DiningRoomTable(attachedDatabase, alias);
  }
}

class Room extends DataClass implements Insertable<Room> {
  final String? code;
  final String? name;
  final bool? isDeleted;
  const Room({this.code, this.name, this.isDeleted});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool>(isDeleted);
    }
    return map;
  }

  DiningRoomCompanion toCompanion(bool nullToAbsent) {
    return DiningRoomCompanion(
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
    );
  }

  factory Room.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Room(
      code: serializer.fromJson<String?>(json['code']),
      name: serializer.fromJson<String?>(json['name']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'code': serializer.toJson<String?>(code),
      'name': serializer.toJson<String?>(name),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
    };
  }

  Room copyWith(
          {Value<String?> code = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<bool?> isDeleted = const Value.absent()}) =>
      Room(
        code: code.present ? code.value : this.code,
        name: name.present ? name.value : this.name,
        isDeleted: isDeleted.present ? isDeleted.value : this.isDeleted,
      );
  @override
  String toString() {
    return (StringBuffer('Room(')
          ..write('code: $code, ')
          ..write('name: $name, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(code, name, isDeleted);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Room &&
          other.code == this.code &&
          other.name == this.name &&
          other.isDeleted == this.isDeleted);
}

class DiningRoomCompanion extends UpdateCompanion<Room> {
  final Value<String?> code;
  final Value<String?> name;
  final Value<bool?> isDeleted;
  final Value<int> rowid;
  const DiningRoomCompanion({
    this.code = const Value.absent(),
    this.name = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DiningRoomCompanion.insert({
    this.code = const Value.absent(),
    this.name = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<Room> custom({
    Expression<String>? code,
    Expression<String>? name,
    Expression<bool>? isDeleted,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (code != null) 'code': code,
      if (name != null) 'name': name,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DiningRoomCompanion copyWith(
      {Value<String?>? code,
      Value<String?>? name,
      Value<bool?>? isDeleted,
      Value<int>? rowid}) {
    return DiningRoomCompanion(
      code: code ?? this.code,
      name: name ?? this.name,
      isDeleted: isDeleted ?? this.isDeleted,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DiningRoomCompanion(')
          ..write('code: $code, ')
          ..write('name: $name, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TableOrderTable extends TableOrder
    with TableInfo<$TableOrderTable, Order> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TableOrderTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tableNoMeta =
      const VerificationMeta('tableNo');
  @override
  late final GeneratedColumn<String> tableNo = GeneratedColumn<String>(
      'table_no', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _roomMeta = const VerificationMeta('room');
  @override
  late final GeneratedColumn<String> room = GeneratedColumn<String>(
      'room', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _itemNameMeta =
      const VerificationMeta('itemName');
  @override
  late final GeneratedColumn<String> itemName = GeneratedColumn<String>(
      'item_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
      'quantity', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _orderCreatedTimeMeta =
      const VerificationMeta('orderCreatedTime');
  @override
  late final GeneratedColumn<int> orderCreatedTime = GeneratedColumn<int>(
      'order_created_time', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _orderCreatedByMeta =
      const VerificationMeta('orderCreatedBy');
  @override
  late final GeneratedColumn<String> orderCreatedBy = GeneratedColumn<String>(
      'order_created_by', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isDeletedMeta =
      const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
      'is_deleted', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_deleted" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _isPaidMeta = const VerificationMeta('isPaid');
  @override
  late final GeneratedColumn<bool> isPaid = GeneratedColumn<bool>(
      'is_paid', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_paid" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        tableNo,
        room,
        itemName,
        quantity,
        price,
        orderCreatedTime,
        orderCreatedBy,
        isDeleted,
        isPaid,
        status
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'table_order';
  @override
  VerificationContext validateIntegrity(Insertable<Order> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('table_no')) {
      context.handle(_tableNoMeta,
          tableNo.isAcceptableOrUnknown(data['table_no']!, _tableNoMeta));
    }
    if (data.containsKey('room')) {
      context.handle(
          _roomMeta, room.isAcceptableOrUnknown(data['room']!, _roomMeta));
    }
    if (data.containsKey('item_name')) {
      context.handle(_itemNameMeta,
          itemName.isAcceptableOrUnknown(data['item_name']!, _itemNameMeta));
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    }
    if (data.containsKey('order_created_time')) {
      context.handle(
          _orderCreatedTimeMeta,
          orderCreatedTime.isAcceptableOrUnknown(
              data['order_created_time']!, _orderCreatedTimeMeta));
    }
    if (data.containsKey('order_created_by')) {
      context.handle(
          _orderCreatedByMeta,
          orderCreatedBy.isAcceptableOrUnknown(
              data['order_created_by']!, _orderCreatedByMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('is_paid')) {
      context.handle(_isPaidMeta,
          isPaid.isAcceptableOrUnknown(data['is_paid']!, _isPaidMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Order map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Order(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id']),
      tableNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}table_no']),
      room: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}room']),
      itemName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_name']),
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}quantity']),
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price']),
      orderCreatedTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_created_time']),
      orderCreatedBy: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}order_created_by']),
      isDeleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_deleted']),
      isPaid: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_paid']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status']),
    );
  }

  @override
  $TableOrderTable createAlias(String alias) {
    return $TableOrderTable(attachedDatabase, alias);
  }
}

class Order extends DataClass implements Insertable<Order> {
  final String? id;
  final String? tableNo;
  final String? room;
  final String? itemName;
  final int? quantity;
  final double? price;
  final int? orderCreatedTime;
  final String? orderCreatedBy;
  final bool? isDeleted;
  final bool? isPaid;
  final String? status;
  const Order(
      {this.id,
      this.tableNo,
      this.room,
      this.itemName,
      this.quantity,
      this.price,
      this.orderCreatedTime,
      this.orderCreatedBy,
      this.isDeleted,
      this.isPaid,
      this.status});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || tableNo != null) {
      map['table_no'] = Variable<String>(tableNo);
    }
    if (!nullToAbsent || room != null) {
      map['room'] = Variable<String>(room);
    }
    if (!nullToAbsent || itemName != null) {
      map['item_name'] = Variable<String>(itemName);
    }
    if (!nullToAbsent || quantity != null) {
      map['quantity'] = Variable<int>(quantity);
    }
    if (!nullToAbsent || price != null) {
      map['price'] = Variable<double>(price);
    }
    if (!nullToAbsent || orderCreatedTime != null) {
      map['order_created_time'] = Variable<int>(orderCreatedTime);
    }
    if (!nullToAbsent || orderCreatedBy != null) {
      map['order_created_by'] = Variable<String>(orderCreatedBy);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool>(isDeleted);
    }
    if (!nullToAbsent || isPaid != null) {
      map['is_paid'] = Variable<bool>(isPaid);
    }
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String>(status);
    }
    return map;
  }

  TableOrderCompanion toCompanion(bool nullToAbsent) {
    return TableOrderCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      tableNo: tableNo == null && nullToAbsent
          ? const Value.absent()
          : Value(tableNo),
      room: room == null && nullToAbsent ? const Value.absent() : Value(room),
      itemName: itemName == null && nullToAbsent
          ? const Value.absent()
          : Value(itemName),
      quantity: quantity == null && nullToAbsent
          ? const Value.absent()
          : Value(quantity),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
      orderCreatedTime: orderCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(orderCreatedTime),
      orderCreatedBy: orderCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(orderCreatedBy),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      isPaid:
          isPaid == null && nullToAbsent ? const Value.absent() : Value(isPaid),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
    );
  }

  factory Order.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Order(
      id: serializer.fromJson<String?>(json['id']),
      tableNo: serializer.fromJson<String?>(json['tableNo']),
      room: serializer.fromJson<String?>(json['room']),
      itemName: serializer.fromJson<String?>(json['itemName']),
      quantity: serializer.fromJson<int?>(json['quantity']),
      price: serializer.fromJson<double?>(json['price']),
      orderCreatedTime: serializer.fromJson<int?>(json['orderCreatedTime']),
      orderCreatedBy: serializer.fromJson<String?>(json['orderCreatedBy']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      isPaid: serializer.fromJson<bool?>(json['isPaid']),
      status: serializer.fromJson<String?>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'tableNo': serializer.toJson<String?>(tableNo),
      'room': serializer.toJson<String?>(room),
      'itemName': serializer.toJson<String?>(itemName),
      'quantity': serializer.toJson<int?>(quantity),
      'price': serializer.toJson<double?>(price),
      'orderCreatedTime': serializer.toJson<int?>(orderCreatedTime),
      'orderCreatedBy': serializer.toJson<String?>(orderCreatedBy),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'isPaid': serializer.toJson<bool?>(isPaid),
      'status': serializer.toJson<String?>(status),
    };
  }

  Order copyWith(
          {Value<String?> id = const Value.absent(),
          Value<String?> tableNo = const Value.absent(),
          Value<String?> room = const Value.absent(),
          Value<String?> itemName = const Value.absent(),
          Value<int?> quantity = const Value.absent(),
          Value<double?> price = const Value.absent(),
          Value<int?> orderCreatedTime = const Value.absent(),
          Value<String?> orderCreatedBy = const Value.absent(),
          Value<bool?> isDeleted = const Value.absent(),
          Value<bool?> isPaid = const Value.absent(),
          Value<String?> status = const Value.absent()}) =>
      Order(
        id: id.present ? id.value : this.id,
        tableNo: tableNo.present ? tableNo.value : this.tableNo,
        room: room.present ? room.value : this.room,
        itemName: itemName.present ? itemName.value : this.itemName,
        quantity: quantity.present ? quantity.value : this.quantity,
        price: price.present ? price.value : this.price,
        orderCreatedTime: orderCreatedTime.present
            ? orderCreatedTime.value
            : this.orderCreatedTime,
        orderCreatedBy:
            orderCreatedBy.present ? orderCreatedBy.value : this.orderCreatedBy,
        isDeleted: isDeleted.present ? isDeleted.value : this.isDeleted,
        isPaid: isPaid.present ? isPaid.value : this.isPaid,
        status: status.present ? status.value : this.status,
      );
  @override
  String toString() {
    return (StringBuffer('Order(')
          ..write('id: $id, ')
          ..write('tableNo: $tableNo, ')
          ..write('room: $room, ')
          ..write('itemName: $itemName, ')
          ..write('quantity: $quantity, ')
          ..write('price: $price, ')
          ..write('orderCreatedTime: $orderCreatedTime, ')
          ..write('orderCreatedBy: $orderCreatedBy, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('isPaid: $isPaid, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, tableNo, room, itemName, quantity, price,
      orderCreatedTime, orderCreatedBy, isDeleted, isPaid, status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Order &&
          other.id == this.id &&
          other.tableNo == this.tableNo &&
          other.room == this.room &&
          other.itemName == this.itemName &&
          other.quantity == this.quantity &&
          other.price == this.price &&
          other.orderCreatedTime == this.orderCreatedTime &&
          other.orderCreatedBy == this.orderCreatedBy &&
          other.isDeleted == this.isDeleted &&
          other.isPaid == this.isPaid &&
          other.status == this.status);
}

class TableOrderCompanion extends UpdateCompanion<Order> {
  final Value<String?> id;
  final Value<String?> tableNo;
  final Value<String?> room;
  final Value<String?> itemName;
  final Value<int?> quantity;
  final Value<double?> price;
  final Value<int?> orderCreatedTime;
  final Value<String?> orderCreatedBy;
  final Value<bool?> isDeleted;
  final Value<bool?> isPaid;
  final Value<String?> status;
  final Value<int> rowid;
  const TableOrderCompanion({
    this.id = const Value.absent(),
    this.tableNo = const Value.absent(),
    this.room = const Value.absent(),
    this.itemName = const Value.absent(),
    this.quantity = const Value.absent(),
    this.price = const Value.absent(),
    this.orderCreatedTime = const Value.absent(),
    this.orderCreatedBy = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.isPaid = const Value.absent(),
    this.status = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TableOrderCompanion.insert({
    this.id = const Value.absent(),
    this.tableNo = const Value.absent(),
    this.room = const Value.absent(),
    this.itemName = const Value.absent(),
    this.quantity = const Value.absent(),
    this.price = const Value.absent(),
    this.orderCreatedTime = const Value.absent(),
    this.orderCreatedBy = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.isPaid = const Value.absent(),
    this.status = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<Order> custom({
    Expression<String>? id,
    Expression<String>? tableNo,
    Expression<String>? room,
    Expression<String>? itemName,
    Expression<int>? quantity,
    Expression<double>? price,
    Expression<int>? orderCreatedTime,
    Expression<String>? orderCreatedBy,
    Expression<bool>? isDeleted,
    Expression<bool>? isPaid,
    Expression<String>? status,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tableNo != null) 'table_no': tableNo,
      if (room != null) 'room': room,
      if (itemName != null) 'item_name': itemName,
      if (quantity != null) 'quantity': quantity,
      if (price != null) 'price': price,
      if (orderCreatedTime != null) 'order_created_time': orderCreatedTime,
      if (orderCreatedBy != null) 'order_created_by': orderCreatedBy,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (isPaid != null) 'is_paid': isPaid,
      if (status != null) 'status': status,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TableOrderCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? tableNo,
      Value<String?>? room,
      Value<String?>? itemName,
      Value<int?>? quantity,
      Value<double?>? price,
      Value<int?>? orderCreatedTime,
      Value<String?>? orderCreatedBy,
      Value<bool?>? isDeleted,
      Value<bool?>? isPaid,
      Value<String?>? status,
      Value<int>? rowid}) {
    return TableOrderCompanion(
      id: id ?? this.id,
      tableNo: tableNo ?? this.tableNo,
      room: room ?? this.room,
      itemName: itemName ?? this.itemName,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      orderCreatedTime: orderCreatedTime ?? this.orderCreatedTime,
      orderCreatedBy: orderCreatedBy ?? this.orderCreatedBy,
      isDeleted: isDeleted ?? this.isDeleted,
      isPaid: isPaid ?? this.isPaid,
      status: status ?? this.status,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (tableNo.present) {
      map['table_no'] = Variable<String>(tableNo.value);
    }
    if (room.present) {
      map['room'] = Variable<String>(room.value);
    }
    if (itemName.present) {
      map['item_name'] = Variable<String>(itemName.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (orderCreatedTime.present) {
      map['order_created_time'] = Variable<int>(orderCreatedTime.value);
    }
    if (orderCreatedBy.present) {
      map['order_created_by'] = Variable<String>(orderCreatedBy.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    if (isPaid.present) {
      map['is_paid'] = Variable<bool>(isPaid.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TableOrderCompanion(')
          ..write('id: $id, ')
          ..write('tableNo: $tableNo, ')
          ..write('room: $room, ')
          ..write('itemName: $itemName, ')
          ..write('quantity: $quantity, ')
          ..write('price: $price, ')
          ..write('orderCreatedTime: $orderCreatedTime, ')
          ..write('orderCreatedBy: $orderCreatedBy, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('isPaid: $isPaid, ')
          ..write('status: $status, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalSqlDataStore extends GeneratedDatabase {
  _$LocalSqlDataStore(QueryExecutor e) : super(e);
  late final $TableDiningTable tableDining = $TableDiningTable(this);
  late final $DiningRoomTable diningRoom = $DiningRoomTable(this);
  late final $TableOrderTable tableOrder = $TableOrderTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [tableDining, diningRoom, tableOrder];
}
