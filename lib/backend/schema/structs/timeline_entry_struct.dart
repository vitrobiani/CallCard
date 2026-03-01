// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimelineEntryStruct extends BaseStruct {
  TimelineEntryStruct({
    String? title,
    String? description,
    String? dateRange,
    List<Languages>? langs,
    List<Tags>? tags,
  })  : _title = title,
        _description = description,
        _dateRange = dateRange,
        _langs = langs,
        _tags = tags;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "dateRange" field.
  String? _dateRange;
  String get dateRange => _dateRange ?? '';
  set dateRange(String? val) => _dateRange = val;

  bool hasDateRange() => _dateRange != null;

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

  static TimelineEntryStruct fromMap(Map<String, dynamic> data) =>
      TimelineEntryStruct(
        title: data['title'] as String?,
        description: data['description'] as String?,
        dateRange: data['date_range'] as String?,
        langs: getEnumList<Languages>(data['langs']),
        tags: getEnumList<Tags>(data['tags']),
      );

  static TimelineEntryStruct? maybeFromMap(dynamic data) => data is Map
      ? TimelineEntryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'description': _description,
        'date_range': _dateRange,
        'langs': _langs?.map((e) => e.serialize()).toList(),
        'tags': _tags?.map((e) => e.serialize()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'date_range': serializeParam(
          _dateRange,
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
      }.withoutNulls;

  static TimelineEntryStruct fromSerializableMap(Map<String, dynamic> data) =>
      TimelineEntryStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        dateRange: deserializeParam(
          data['date_range'],
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
      );

  @override
  String toString() => 'TimelineEntryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TimelineEntryStruct &&
        title == other.title &&
        description == other.description &&
        dateRange == other.dateRange &&
        listEquality.equals(langs, other.langs) &&
        listEquality.equals(tags, other.tags);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([title, description, dateRange, langs, tags]);
}

TimelineEntryStruct createTimelineEntryStruct({
  String? title,
  String? description,
  String? dateRange,
}) =>
    TimelineEntryStruct(
      title: title,
      description: description,
      dateRange: dateRange,
    );
