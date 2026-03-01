import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'details.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  NavPages? _curPage = NavPages.HOME;
  NavPages? get curPage => _curPage;
  set curPage(NavPages? value) {
    _curPage = value;
  }

  List<ProjectCardStruct> _projects = ProjectsDetails.projectsList;
  List<ProjectCardStruct> get projects => _projects;
  set projects(List<ProjectCardStruct> value) {
    _projects = value;
  }

  void addToProjects(ProjectCardStruct value) {
    projects.add(value);
  }

  void removeFromProjects(ProjectCardStruct value) {
    projects.remove(value);
  }

  void removeAtIndexFromProjects(int index) {
    projects.removeAt(index);
  }

  void updateProjectsAtIndex(
    int index,
    ProjectCardStruct Function(ProjectCardStruct) updateFn,
  ) {
    projects[index] = updateFn(_projects[index]);
  }

  void insertAtIndexInProjects(int index, ProjectCardStruct value) {
    projects.insert(index, value);
  }

  List<String> _generalTags = ['Linux', 'Client/Server'];
  List<String> get generalTags => _generalTags;
  set generalTags(List<String> value) {
    _generalTags = value;
  }

  void addToGeneralTags(String value) {
    generalTags.add(value);
  }

  void removeFromGeneralTags(String value) {
    generalTags.remove(value);
  }

  void removeAtIndexFromGeneralTags(int index) {
    generalTags.removeAt(index);
  }

  void updateGeneralTagsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    generalTags[index] = updateFn(_generalTags[index]);
  }

  void insertAtIndexInGeneralTags(int index, String value) {
    generalTags.insert(index, value);
  }

  List<String> _languages = ['Java', 'Python', 'C', 'C++', 'Rust'];
  List<String> get languages => _languages;
  set languages(List<String> value) {
    _languages = value;
  }

  void addToLanguages(String value) {
    languages.add(value);
  }

  void removeFromLanguages(String value) {
    languages.remove(value);
  }

  void removeAtIndexFromLanguages(int index) {
    languages.removeAt(index);
  }

  void updateLanguagesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    languages[index] = updateFn(_languages[index]);
  }

  void insertAtIndexInLanguages(int index, String value) {
    languages.insert(index, value);
  }

  List<Languages> _filterOptionsLanguages = [];
  List<Languages> get filterOptionsLanguages => _filterOptionsLanguages;
  set filterOptionsLanguages(List<Languages> value) {
    _filterOptionsLanguages = value;
  }

  void addToFilterOptionsLanguages(Languages value) {
    filterOptionsLanguages.add(value);
  }

  void removeFromFilterOptionsLanguages(Languages value) {
    filterOptionsLanguages.remove(value);
  }

  void removeAtIndexFromFilterOptionsLanguages(int index) {
    filterOptionsLanguages.removeAt(index);
  }

  void updateFilterOptionsLanguagesAtIndex(
    int index,
    Languages Function(Languages) updateFn,
  ) {
    filterOptionsLanguages[index] = updateFn(_filterOptionsLanguages[index]);
  }

  void insertAtIndexInFilterOptionsLanguages(int index, Languages value) {
    filterOptionsLanguages.insert(index, value);
  }

  List<TimelineEntryStruct> _timelineEntries = TimelineDetails.timelineList;
  List<TimelineEntryStruct> get timelineEntries => _timelineEntries;
  set timelineEntries(List<TimelineEntryStruct> value) {
    _timelineEntries = value;
  }

  List<SkillCategoryStruct> _skillCategories = SkillsDetails.skillsList;
  List<SkillCategoryStruct> get skillCategories => _skillCategories;
  set skillCategories(List<SkillCategoryStruct> value) {
    _skillCategories = value;
  }

  List<Tags> _filterOptionsTags = [];
  List<Tags> get filterOptionsTags => _filterOptionsTags;
  set filterOptionsTags(List<Tags> value) {
    _filterOptionsTags = value;
  }

  void addToFilterOptionsTags(Tags value) {
    filterOptionsTags.add(value);
  }

  void removeFromFilterOptionsTags(Tags value) {
    filterOptionsTags.remove(value);
  }

  void removeAtIndexFromFilterOptionsTags(int index) {
    filterOptionsTags.removeAt(index);
  }

  void updateFilterOptionsTagsAtIndex(
    int index,
    Tags Function(Tags) updateFn,
  ) {
    filterOptionsTags[index] = updateFn(_filterOptionsTags[index]);
  }

  void insertAtIndexInFilterOptionsTags(int index, Tags value) {
    filterOptionsTags.insert(index, value);
  }
}
