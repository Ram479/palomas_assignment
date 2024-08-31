// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'room_model.dart';

class RoomSearchModelMapper extends ClassMapperBase<RoomSearchModel> {
  RoomSearchModelMapper._();

  static RoomSearchModelMapper? _instance;
  static RoomSearchModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RoomSearchModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RoomSearchModel';

  static String? _$name(RoomSearchModel v) => v.name;
  static const Field<RoomSearchModel, String> _f$name =
      Field('name', _$name, opt: true);
  static String? _$code(RoomSearchModel v) => v.code;
  static const Field<RoomSearchModel, String> _f$code =
      Field('code', _$code, opt: true);

  @override
  final MappableFields<RoomSearchModel> fields = const {
    #name: _f$name,
    #code: _f$code,
  };
  @override
  final bool ignoreNull = true;

  static RoomSearchModel _instantiate(DecodingData data) {
    return RoomSearchModel(name: data.dec(_f$name), code: data.dec(_f$code));
  }

  @override
  final Function instantiate = _instantiate;

  static RoomSearchModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RoomSearchModel>(map);
  }

  static RoomSearchModel fromJson(String json) {
    return ensureInitialized().decodeJson<RoomSearchModel>(json);
  }
}

mixin RoomSearchModelMappable {
  String toJson() {
    return RoomSearchModelMapper.ensureInitialized()
        .encodeJson<RoomSearchModel>(this as RoomSearchModel);
  }

  Map<String, dynamic> toMap() {
    return RoomSearchModelMapper.ensureInitialized()
        .encodeMap<RoomSearchModel>(this as RoomSearchModel);
  }

  RoomSearchModelCopyWith<RoomSearchModel, RoomSearchModel, RoomSearchModel>
      get copyWith => _RoomSearchModelCopyWithImpl(
          this as RoomSearchModel, $identity, $identity);
  @override
  String toString() {
    return RoomSearchModelMapper.ensureInitialized()
        .stringifyValue(this as RoomSearchModel);
  }

  @override
  bool operator ==(Object other) {
    return RoomSearchModelMapper.ensureInitialized()
        .equalsValue(this as RoomSearchModel, other);
  }

  @override
  int get hashCode {
    return RoomSearchModelMapper.ensureInitialized()
        .hashValue(this as RoomSearchModel);
  }
}

extension RoomSearchModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RoomSearchModel, $Out> {
  RoomSearchModelCopyWith<$R, RoomSearchModel, $Out> get $asRoomSearchModel =>
      $base.as((v, t, t2) => _RoomSearchModelCopyWithImpl(v, t, t2));
}

abstract class RoomSearchModelCopyWith<$R, $In extends RoomSearchModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? code});
  RoomSearchModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RoomSearchModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RoomSearchModel, $Out>
    implements RoomSearchModelCopyWith<$R, RoomSearchModel, $Out> {
  _RoomSearchModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RoomSearchModel> $mapper =
      RoomSearchModelMapper.ensureInitialized();
  @override
  $R call({Object? name = $none, Object? code = $none}) =>
      $apply(FieldCopyWithData(
          {if (name != $none) #name: name, if (code != $none) #code: code}));
  @override
  RoomSearchModel $make(CopyWithData data) => RoomSearchModel(
      name: data.get(#name, or: $value.name),
      code: data.get(#code, or: $value.code));

  @override
  RoomSearchModelCopyWith<$R2, RoomSearchModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RoomSearchModelCopyWithImpl($value, $cast, t);
}

class RoomModelMapper extends ClassMapperBase<RoomModel> {
  RoomModelMapper._();

  static RoomModelMapper? _instance;
  static RoomModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RoomModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RoomModel';

  static String? _$name(RoomModel v) => v.name;
  static const Field<RoomModel, String> _f$name =
      Field('name', _$name, opt: true);
  static String? _$code(RoomModel v) => v.code;
  static const Field<RoomModel, String> _f$code =
      Field('code', _$code, opt: true);

  @override
  final MappableFields<RoomModel> fields = const {
    #name: _f$name,
    #code: _f$code,
  };
  @override
  final bool ignoreNull = true;

  static RoomModel _instantiate(DecodingData data) {
    return RoomModel(name: data.dec(_f$name), code: data.dec(_f$code));
  }

  @override
  final Function instantiate = _instantiate;

  static RoomModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RoomModel>(map);
  }

  static RoomModel fromJson(String json) {
    return ensureInitialized().decodeJson<RoomModel>(json);
  }
}

mixin RoomModelMappable {
  String toJson() {
    return RoomModelMapper.ensureInitialized()
        .encodeJson<RoomModel>(this as RoomModel);
  }

  Map<String, dynamic> toMap() {
    return RoomModelMapper.ensureInitialized()
        .encodeMap<RoomModel>(this as RoomModel);
  }

  RoomModelCopyWith<RoomModel, RoomModel, RoomModel> get copyWith =>
      _RoomModelCopyWithImpl(this as RoomModel, $identity, $identity);
  @override
  String toString() {
    return RoomModelMapper.ensureInitialized()
        .stringifyValue(this as RoomModel);
  }

  @override
  bool operator ==(Object other) {
    return RoomModelMapper.ensureInitialized()
        .equalsValue(this as RoomModel, other);
  }

  @override
  int get hashCode {
    return RoomModelMapper.ensureInitialized().hashValue(this as RoomModel);
  }
}

extension RoomModelValueCopy<$R, $Out> on ObjectCopyWith<$R, RoomModel, $Out> {
  RoomModelCopyWith<$R, RoomModel, $Out> get $asRoomModel =>
      $base.as((v, t, t2) => _RoomModelCopyWithImpl(v, t, t2));
}

abstract class RoomModelCopyWith<$R, $In extends RoomModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? code});
  RoomModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RoomModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RoomModel, $Out>
    implements RoomModelCopyWith<$R, RoomModel, $Out> {
  _RoomModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RoomModel> $mapper =
      RoomModelMapper.ensureInitialized();
  @override
  $R call({Object? name = $none, Object? code = $none}) =>
      $apply(FieldCopyWithData(
          {if (name != $none) #name: name, if (code != $none) #code: code}));
  @override
  RoomModel $make(CopyWithData data) => RoomModel(
      name: data.get(#name, or: $value.name),
      code: data.get(#code, or: $value.code));

  @override
  RoomModelCopyWith<$R2, RoomModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RoomModelCopyWithImpl($value, $cast, t);
}
