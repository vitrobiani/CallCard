import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'filter_options_widget.dart' show FilterOptionsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FilterOptionsModel extends FlutterFlowModel<FilterOptionsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for langs widget.
  FormFieldController<List<String>>? langsValueController;
  List<String>? get langsValues => langsValueController?.value;
  set langsValues(List<String>? val) => langsValueController?.value = val;
  // State field(s) for tags widget.
  FormFieldController<List<String>>? tagsValueController;
  List<String>? get tagsValues => tagsValueController?.value;
  set tagsValues(List<String>? val) => tagsValueController?.value = val;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
