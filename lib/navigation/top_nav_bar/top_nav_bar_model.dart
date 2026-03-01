import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/navigation/top_menu_button/top_menu_button_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'top_nav_bar_widget.dart' show TopNavBarWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TopNavBarModel extends FlutterFlowModel<TopNavBarWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for topMenuButton component.
  late TopMenuButtonModel topMenuButtonModel1;
  // Model for topMenuButton component.
  late TopMenuButtonModel topMenuButtonModel2;
  // Model for topMenuButton component.
  late TopMenuButtonModel topMenuButtonModel3;

  @override
  void initState(BuildContext context) {
    topMenuButtonModel1 = createModel(context, () => TopMenuButtonModel());
    topMenuButtonModel2 = createModel(context, () => TopMenuButtonModel());
    topMenuButtonModel3 = createModel(context, () => TopMenuButtonModel());
  }

  @override
  void dispose() {
    topMenuButtonModel1.dispose();
    topMenuButtonModel2.dispose();
    topMenuButtonModel3.dispose();
  }
}
