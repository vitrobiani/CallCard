// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectCardStruct extends BaseStruct {
  ProjectCardStruct({
    String? name,
    List<Languages>? langs,
    List<Tags>? tags,
    String? summary,
    String? githubLink,
    String? description,
    List<String>? features,
    ProjectStatus? status,
    String? previewLink,
  })  : _name = name,
        _langs = langs,
        _tags = tags,
        _summary = summary,
        _githubLink = githubLink,
        _description = description,
        _features = features,
        _status = status,
        _previewLink = previewLink;


  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "langs" field.
  List<Languages>? _langs;
  List<Languages> get langs => _langs ?? const [];
  set langs(List<Languages>? val) => _langs = val;

  void updateLangs(Function(List<Languages>) updateFn) {
    updateFn(_langs ??= []);
  }

  bool hasLangs() => _langs != null;

  // "tags" field.
  List<Tags>? _tags;
  List<Tags> get tags => _tags ?? const [];
  set tags(List<Tags>? val) => _tags = val;

  void updateTags(Function(List<Tags>) updateFn) {
    updateFn(_tags ??= []);
  }

  bool hasTags() => _tags != null;

  // "summary" field.
  String? _summary;
  String get summary => _summary ?? '';
  set summary(String? val) => _summary = val;

  bool hasSummary() => _summary != null;

  // "github_link" field.
  String? _githubLink;
  String get githubLink => _githubLink ?? '';
  set githubLink(String? val) => _githubLink = val;

  bool hasGithubLink() => _githubLink != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "features" field.
  List<String>? _features;
  List<String> get features => _features ?? const [];
  set features(List<String>? val) => _features = val;

  void updateFeatures(Function(List<String>) updateFn) {
    updateFn(_features ??= []);
  }

  bool hasFeatures() => _features != null;

  // "status" field.
  ProjectStatus? _status;
  ProjectStatus get status => _status ?? ProjectStatus.InProgress;
  set status(ProjectStatus? val) => _status = val;

  bool hasStatus() => _status != null;

  String? _previewLink;
  String get previewLink => _previewLink ?? '';
  set previewLink(String? val) => _previewLink = val;

  static ProjectCardStruct fromMap(Map<String, dynamic> data) =>
      ProjectCardStruct(
        name: data['name'] as String?,
        langs: getEnumList<Languages>(data['langs']),
        tags: getEnumList<Tags>(data['tags']),
        summary: data['summary'] as String?,
        githubLink: data['github_link'] as String?,
        description: data['description'] as String?,
        features: getDataList(data['features']),
        status: deserializeEnum<ProjectStatus>(data['status']),
      );

  static ProjectCardStruct? maybeFromMap(dynamic data) => data is Map
      ? ProjectCardStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'langs': _langs?.map((e) => e.serialize()).toList(),
        'tags': _tags?.map((e) => e.serialize()).toList(),
        'summary': _summary,
        'github_link': _githubLink,
        'description': _description,
        'features': _features,
        'status': _status?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'langs': serializeParam(
          _langs,
          ParamType.Enum,
          isList: true,
        ),
        'tags': serializeParam(
          _tags,
          ParamType.Enum,
          isList: true,
        ),
        'summary': serializeParam(
          _summary,
          ParamType.String,
        ),
        'github_link': serializeParam(
          _githubLink,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'features': serializeParam(
          _features,
          ParamType.String,
          isList: true,
        ),
        'status': serializeParam(
          _status,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static ProjectCardStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProjectCardStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        langs: deserializeParam<Languages>(
          data['langs'],
          ParamType.Enum,
          true,
        ),
        tags: deserializeParam<Tags>(
          data['tags'],
          ParamType.Enum,
          true,
        ),
        summary: deserializeParam(
          data['summary'],
          ParamType.String,
          false,
        ),
        githubLink: deserializeParam(
          data['github_link'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        features: deserializeParam<String>(
          data['features'],
          ParamType.String,
          true,
        ),
        status: deserializeParam<ProjectStatus>(
          data['status'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'ProjectCardStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProjectCardStruct &&
        name == other.name &&
        listEquality.equals(langs, other.langs) &&
        listEquality.equals(tags, other.tags) &&
        summary == other.summary &&
        githubLink == other.githubLink &&
        description == other.description &&
        listEquality.equals(features, other.features) &&
        status == other.status;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, langs, tags, summary, githubLink, description, features, status]);
}

ProjectCardStruct createProjectCardStruct({
  String? name,
  String? summary,
  String? githubLink,
  String? description,
  ProjectStatus? status,
}) =>
    ProjectCardStruct(
      name: name,
      summary: summary,
      githubLink: githubLink,
      description: description,
      status: status,
    );
