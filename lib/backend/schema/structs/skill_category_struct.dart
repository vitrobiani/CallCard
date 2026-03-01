// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SkillCategoryStruct extends BaseStruct {
  SkillCategoryStruct({
    String? categoryName,
    List<SkillItemStruct>? skills,
  })  : _categoryName = categoryName,
        _skills = skills;

  // "categoryName" field.
  String? _categoryName;
  String get categoryName => _categoryName ?? '';
  set categoryName(String? val) => _categoryName = val;

  bool hasCategoryName() => _categoryName != null;

  // "skills" field.
  List<SkillItemStruct>? _skills;
  List<SkillItemStruct> get skills => _skills ?? const [];
  set skills(List<SkillItemStruct>? val) => _skills = val;

  void updateSkills(Function(List<SkillItemStruct>) updateFn) {
    updateFn(_skills ??= []);
  }

  bool hasSkills() => _skills != null;

  static SkillCategoryStruct fromMap(Map<String, dynamic> data) =>
      SkillCategoryStruct(
        categoryName: data['category_name'] as String?,
        skills: getStructList(data['skills'], SkillItemStruct.fromMap),
      );

  static SkillCategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? SkillCategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'category_name': _categoryName,
        'skills': _skills?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'category_name': serializeParam(
          _categoryName,
          ParamType.String,
        ),
        'skills': serializeParam(
          _skills,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static SkillCategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      SkillCategoryStruct(
        categoryName: deserializeParam(
          data['category_name'],
          ParamType.String,
          false,
        ),
        skills: deserializeStructParam<SkillItemStruct>(
          data['skills'],
          ParamType.DataStruct,
          true,
          structBuilder: SkillItemStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SkillCategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SkillCategoryStruct &&
        categoryName == other.categoryName &&
        listEquality.equals(skills, other.skills);
  }

  @override
  int get hashCode => const ListEquality().hash([categoryName, skills]);
}

SkillCategoryStruct createSkillCategoryStruct({
  String? categoryName,
}) =>
    SkillCategoryStruct(
      categoryName: categoryName,
    );
