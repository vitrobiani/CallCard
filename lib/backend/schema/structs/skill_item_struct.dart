// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SkillItemStruct extends BaseStruct {
  SkillItemStruct({
    String? name,
    Languages? lang,
    Tags? tag,
  })  : _name = name,
        _lang = lang,
        _tag = tag;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "lang" field.
  Languages? _lang;
  Languages? get lang => _lang;
  set lang(Languages? val) => _lang = val;

  bool hasLang() => _lang != null;

  // "tag" field.
  Tags? _tag;
  Tags? get tag => _tag;
  set tag(Tags? val) => _tag = val;

  bool hasTag() => _tag != null;

  static SkillItemStruct fromMap(Map<String, dynamic> data) =>
      SkillItemStruct(
        name: data['name'] as String?,
        lang: deserializeEnum<Languages>(data['lang']),
        tag: deserializeEnum<Tags>(data['tag']),
      );

  static SkillItemStruct? maybeFromMap(dynamic data) => data is Map
      ? SkillItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'lang': _lang?.serialize(),
        'tag': _tag?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'lang': serializeParam(
          _lang,
          ParamType.Enum,
        ),
        'tag': serializeParam(
          _tag,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static SkillItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      SkillItemStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        lang: deserializeParam<Languages>(
          data['lang'],
          ParamType.Enum,
          false,
        ),
        tag: deserializeParam<Tags>(
          data['tag'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'SkillItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SkillItemStruct &&
        name == other.name &&
        lang == other.lang &&
        tag == other.tag;
  }

  @override
  int get hashCode => const ListEquality().hash([name, lang, tag]);
}

SkillItemStruct createSkillItemStruct({
  String? name,
  Languages? lang,
  Tags? tag,
}) =>
    SkillItemStruct(
      name: name,
      lang: lang,
      tag: tag,
    );
