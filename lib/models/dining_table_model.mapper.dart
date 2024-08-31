// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'dining_table_model.dart';

class DiningTableSearchModelMapper
    extends ClassMapperBase<DiningTableSearchModel> {
  DiningTableSearchModelMapper._();

  static DiningTableSearchModelMapper? _instance;
  static DiningTableSearchModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DiningTableSearchModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DiningTableSearchModel';

  static List<String>? _$id(DiningTableSearchModel v) => v.id;
  static const Field<DiningTableSearchModel, List<String>> _f$id =
      Field('id', _$id, opt: true);
  static String? _$tableNo(DiningTableSearchModel v) => v.tableNo;
  static const Field<DiningTableSearchModel, String> _f$tableNo =
      Field('tableNo', _$tableNo, opt: true);
  static String? _$room(DiningTableSearchModel v) => v.room;
  static const Field<DiningTableSearchModel, String> _f$room =
      Field('room', _$room, opt: true);
  static bool? _$isBusy(DiningTableSearchModel v) => v.isBusy;
  static const Field<DiningTableSearchModel, bool> _f$isBusy =
      Field('isBusy', _$isBusy, opt: true, def: false);
  static bool? _$isPaid(DiningTableSearchModel v) => v.isPaid;
  static const Field<DiningTableSearchModel, bool> _f$isPaid =
      Field('isPaid', _$isPaid, opt: true, def: true);
  static bool? _$isDeleted(DiningTableSearchModel v) => v.isDeleted;
  static const Field<DiningTableSearchModel, bool> _f$isDeleted =
      Field('isDeleted', _$isDeleted, opt: true, def: false);
  static int? _$tableStartedAt(DiningTableSearchModel v) => v.tableStartedAt;
  static const Field<DiningTableSearchModel, int> _f$tableStartedAt =
      Field('tableStartedAt', _$tableStartedAt, opt: true);
  static int? _$tableEndedAt(DiningTableSearchModel v) => v.tableEndedAt;
  static const Field<DiningTableSearchModel, int> _f$tableEndedAt =
      Field('tableEndedAt', _$tableEndedAt, opt: true);

  @override
  final MappableFields<DiningTableSearchModel> fields = const {
    #id: _f$id,
    #tableNo: _f$tableNo,
    #room: _f$room,
    #isBusy: _f$isBusy,
    #isPaid: _f$isPaid,
    #isDeleted: _f$isDeleted,
    #tableStartedAt: _f$tableStartedAt,
    #tableEndedAt: _f$tableEndedAt,
  };
  @override
  final bool ignoreNull = true;

  static DiningTableSearchModel _instantiate(DecodingData data) {
    return DiningTableSearchModel(
        id: data.dec(_f$id),
        tableNo: data.dec(_f$tableNo),
        room: data.dec(_f$room),
        isBusy: data.dec(_f$isBusy),
        isPaid: data.dec(_f$isPaid),
        isDeleted: data.dec(_f$isDeleted),
        tableStartedAt: data.dec(_f$tableStartedAt),
        tableEndedAt: data.dec(_f$tableEndedAt));
  }

  @override
  final Function instantiate = _instantiate;

  static DiningTableSearchModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DiningTableSearchModel>(map);
  }

  static DiningTableSearchModel fromJson(String json) {
    return ensureInitialized().decodeJson<DiningTableSearchModel>(json);
  }
}

mixin DiningTableSearchModelMappable {
  String toJson() {
    return DiningTableSearchModelMapper.ensureInitialized()
        .encodeJson<DiningTableSearchModel>(this as DiningTableSearchModel);
  }

  Map<String, dynamic> toMap() {
    return DiningTableSearchModelMapper.ensureInitialized()
        .encodeMap<DiningTableSearchModel>(this as DiningTableSearchModel);
  }

  DiningTableSearchModelCopyWith<DiningTableSearchModel, DiningTableSearchModel,
          DiningTableSearchModel>
      get copyWith => _DiningTableSearchModelCopyWithImpl(
          this as DiningTableSearchModel, $identity, $identity);
  @override
  String toString() {
    return DiningTableSearchModelMapper.ensureInitialized()
        .stringifyValue(this as DiningTableSearchModel);
  }

  @override
  bool operator ==(Object other) {
    return DiningTableSearchModelMapper.ensureInitialized()
        .equalsValue(this as DiningTableSearchModel, other);
  }

  @override
  int get hashCode {
    return DiningTableSearchModelMapper.ensureInitialized()
        .hashValue(this as DiningTableSearchModel);
  }
}

extension DiningTableSearchModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DiningTableSearchModel, $Out> {
  DiningTableSearchModelCopyWith<$R, DiningTableSearchModel, $Out>
      get $asDiningTableSearchModel =>
          $base.as((v, t, t2) => _DiningTableSearchModelCopyWithImpl(v, t, t2));
}

abstract class DiningTableSearchModelCopyWith<
    $R,
    $In extends DiningTableSearchModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get id;
  $R call(
      {List<String>? id,
      String? tableNo,
      String? room,
      bool? isBusy,
      bool? isPaid,
      bool? isDeleted,
      int? tableStartedAt,
      int? tableEndedAt});
  DiningTableSearchModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DiningTableSearchModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DiningTableSearchModel, $Out>
    implements
        DiningTableSearchModelCopyWith<$R, DiningTableSearchModel, $Out> {
  _DiningTableSearchModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DiningTableSearchModel> $mapper =
      DiningTableSearchModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get id =>
      $value.id != null
          ? ListCopyWith($value.id!, (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(id: v))
          : null;
  @override
  $R call(
          {Object? id = $none,
          Object? tableNo = $none,
          Object? room = $none,
          Object? isBusy = $none,
          Object? isPaid = $none,
          Object? isDeleted = $none,
          Object? tableStartedAt = $none,
          Object? tableEndedAt = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (tableNo != $none) #tableNo: tableNo,
        if (room != $none) #room: room,
        if (isBusy != $none) #isBusy: isBusy,
        if (isPaid != $none) #isPaid: isPaid,
        if (isDeleted != $none) #isDeleted: isDeleted,
        if (tableStartedAt != $none) #tableStartedAt: tableStartedAt,
        if (tableEndedAt != $none) #tableEndedAt: tableEndedAt
      }));
  @override
  DiningTableSearchModel $make(CopyWithData data) => DiningTableSearchModel(
      id: data.get(#id, or: $value.id),
      tableNo: data.get(#tableNo, or: $value.tableNo),
      room: data.get(#room, or: $value.room),
      isBusy: data.get(#isBusy, or: $value.isBusy),
      isPaid: data.get(#isPaid, or: $value.isPaid),
      isDeleted: data.get(#isDeleted, or: $value.isDeleted),
      tableStartedAt: data.get(#tableStartedAt, or: $value.tableStartedAt),
      tableEndedAt: data.get(#tableEndedAt, or: $value.tableEndedAt));

  @override
  DiningTableSearchModelCopyWith<$R2, DiningTableSearchModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _DiningTableSearchModelCopyWithImpl($value, $cast, t);
}

class DiningTableModelMapper extends ClassMapperBase<DiningTableModel> {
  DiningTableModelMapper._();

  static DiningTableModelMapper? _instance;
  static DiningTableModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DiningTableModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DiningTableModel';

  static String? _$id(DiningTableModel v) => v.id;
  static const Field<DiningTableModel, String> _f$id =
      Field('id', _$id, opt: true);
  static String? _$tableNo(DiningTableModel v) => v.tableNo;
  static const Field<DiningTableModel, String> _f$tableNo =
      Field('tableNo', _$tableNo, opt: true);
  static String? _$room(DiningTableModel v) => v.room;
  static const Field<DiningTableModel, String> _f$room =
      Field('room', _$room, opt: true);
  static bool? _$isDeleted(DiningTableModel v) => v.isDeleted;
  static const Field<DiningTableModel, bool> _f$isDeleted =
      Field('isDeleted', _$isDeleted, opt: true, def: false);
  static bool? _$isBusy(DiningTableModel v) => v.isBusy;
  static const Field<DiningTableModel, bool> _f$isBusy =
      Field('isBusy', _$isBusy, opt: true, def: false);
  static bool? _$isPaid(DiningTableModel v) => v.isPaid;
  static const Field<DiningTableModel, bool> _f$isPaid =
      Field('isPaid', _$isPaid, opt: true, def: true);
  static int? _$tableStartedAt(DiningTableModel v) => v.tableStartedAt;
  static const Field<DiningTableModel, int> _f$tableStartedAt =
      Field('tableStartedAt', _$tableStartedAt, opt: true);
  static int? _$tableEndedAt(DiningTableModel v) => v.tableEndedAt;
  static const Field<DiningTableModel, int> _f$tableEndedAt =
      Field('tableEndedAt', _$tableEndedAt, opt: true);

  @override
  final MappableFields<DiningTableModel> fields = const {
    #id: _f$id,
    #tableNo: _f$tableNo,
    #room: _f$room,
    #isDeleted: _f$isDeleted,
    #isBusy: _f$isBusy,
    #isPaid: _f$isPaid,
    #tableStartedAt: _f$tableStartedAt,
    #tableEndedAt: _f$tableEndedAt,
  };
  @override
  final bool ignoreNull = true;

  static DiningTableModel _instantiate(DecodingData data) {
    return DiningTableModel(
        id: data.dec(_f$id),
        tableNo: data.dec(_f$tableNo),
        room: data.dec(_f$room),
        isDeleted: data.dec(_f$isDeleted),
        isBusy: data.dec(_f$isBusy),
        isPaid: data.dec(_f$isPaid),
        tableStartedAt: data.dec(_f$tableStartedAt),
        tableEndedAt: data.dec(_f$tableEndedAt));
  }

  @override
  final Function instantiate = _instantiate;

  static DiningTableModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DiningTableModel>(map);
  }

  static DiningTableModel fromJson(String json) {
    return ensureInitialized().decodeJson<DiningTableModel>(json);
  }
}

mixin DiningTableModelMappable {
  String toJson() {
    return DiningTableModelMapper.ensureInitialized()
        .encodeJson<DiningTableModel>(this as DiningTableModel);
  }

  Map<String, dynamic> toMap() {
    return DiningTableModelMapper.ensureInitialized()
        .encodeMap<DiningTableModel>(this as DiningTableModel);
  }

  DiningTableModelCopyWith<DiningTableModel, DiningTableModel, DiningTableModel>
      get copyWith => _DiningTableModelCopyWithImpl(
          this as DiningTableModel, $identity, $identity);
  @override
  String toString() {
    return DiningTableModelMapper.ensureInitialized()
        .stringifyValue(this as DiningTableModel);
  }

  @override
  bool operator ==(Object other) {
    return DiningTableModelMapper.ensureInitialized()
        .equalsValue(this as DiningTableModel, other);
  }

  @override
  int get hashCode {
    return DiningTableModelMapper.ensureInitialized()
        .hashValue(this as DiningTableModel);
  }
}

extension DiningTableModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DiningTableModel, $Out> {
  DiningTableModelCopyWith<$R, DiningTableModel, $Out>
      get $asDiningTableModel =>
          $base.as((v, t, t2) => _DiningTableModelCopyWithImpl(v, t, t2));
}

abstract class DiningTableModelCopyWith<$R, $In extends DiningTableModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? tableNo,
      String? room,
      bool? isDeleted,
      bool? isBusy,
      bool? isPaid,
      int? tableStartedAt,
      int? tableEndedAt});
  DiningTableModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DiningTableModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DiningTableModel, $Out>
    implements DiningTableModelCopyWith<$R, DiningTableModel, $Out> {
  _DiningTableModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DiningTableModel> $mapper =
      DiningTableModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          Object? tableNo = $none,
          Object? room = $none,
          Object? isDeleted = $none,
          Object? isBusy = $none,
          Object? isPaid = $none,
          Object? tableStartedAt = $none,
          Object? tableEndedAt = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (tableNo != $none) #tableNo: tableNo,
        if (room != $none) #room: room,
        if (isDeleted != $none) #isDeleted: isDeleted,
        if (isBusy != $none) #isBusy: isBusy,
        if (isPaid != $none) #isPaid: isPaid,
        if (tableStartedAt != $none) #tableStartedAt: tableStartedAt,
        if (tableEndedAt != $none) #tableEndedAt: tableEndedAt
      }));
  @override
  DiningTableModel $make(CopyWithData data) => DiningTableModel(
      id: data.get(#id, or: $value.id),
      tableNo: data.get(#tableNo, or: $value.tableNo),
      room: data.get(#room, or: $value.room),
      isDeleted: data.get(#isDeleted, or: $value.isDeleted),
      isBusy: data.get(#isBusy, or: $value.isBusy),
      isPaid: data.get(#isPaid, or: $value.isPaid),
      tableStartedAt: data.get(#tableStartedAt, or: $value.tableStartedAt),
      tableEndedAt: data.get(#tableEndedAt, or: $value.tableEndedAt));

  @override
  DiningTableModelCopyWith<$R2, DiningTableModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DiningTableModelCopyWithImpl($value, $cast, t);
}
