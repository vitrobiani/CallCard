import '/components/tech_stack_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'introduction_widget.dart' show IntroductionWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IntroductionModel extends FlutterFlowModel<IntroductionWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for techStack component.
  late TechStackModel techStackModel;

  @override
  void initState(BuildContext context) {
    techStackModel = createModel(context, () => TechStackModel());
  }

  @override
  void dispose() {
    techStackModel.dispose();
  }
}
