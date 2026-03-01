import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/introduction/introduction_widget.dart';
import '/home/leave_message/leave_message_widget.dart';
import '/navigation/top_nav_bar/top_nav_bar_widget.dart';
import 'dart:ui';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for topNavBar component.
  late TopNavBarModel topNavBarModel;
  // Model for introduction component.
  late IntroductionModel introductionModel;
  // Model for leaveMessage component.
  late LeaveMessageModel leaveMessageModel;

  @override
  void initState(BuildContext context) {
    topNavBarModel = createModel(context, () => TopNavBarModel());
    introductionModel = createModel(context, () => IntroductionModel());
    leaveMessageModel = createModel(context, () => LeaveMessageModel());
  }

  @override
  void dispose() {
    topNavBarModel.dispose();
    introductionModel.dispose();
    leaveMessageModel.dispose();
  }
}
