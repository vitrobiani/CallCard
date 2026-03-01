import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/navigation/top_nav_bar/top_nav_bar_widget.dart';
import 'skills_widget.dart' show SkillsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SkillsModel extends FlutterFlowModel<SkillsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for topNavBar component.
  late TopNavBarModel topNavBarModel;

  @override
  void initState(BuildContext context) {
    topNavBarModel = createModel(context, () => TopNavBarModel());
  }

  @override
  void dispose() {
    topNavBarModel.dispose();
  }
}
