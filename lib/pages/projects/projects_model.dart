import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/navigation/top_nav_bar/top_nav_bar_widget.dart';
import '/projects/card_project/card_project_widget.dart';
import '/projects/filter_options/filter_options_widget.dart';
import '/projects/project_viewing/project_viewing_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'projects_widget.dart' show ProjectsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProjectsModel extends FlutterFlowModel<ProjectsWidget> {
  ///  Local state fields for this page.

  bool isViewingProject = false;

  ProjectCardStruct? currentViewingProject;
  void updateCurrentViewingProjectStruct(Function(ProjectCardStruct) updateFn) {
    updateFn(currentViewingProject ??= ProjectCardStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Model for topNavBar component.
  late TopNavBarModel topNavBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for projectViewing component.
  late ProjectViewingModel projectViewingModel;

  @override
  void initState(BuildContext context) {
    topNavBarModel = createModel(context, () => TopNavBarModel());
    projectViewingModel = createModel(context, () => ProjectViewingModel());
  }

  @override
  void dispose() {
    topNavBarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    projectViewingModel.dispose();
  }
}
