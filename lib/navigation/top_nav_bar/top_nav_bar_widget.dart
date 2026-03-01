import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/navigation/top_menu_button/top_menu_button_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'top_nav_bar_model.dart';
export 'top_nav_bar_model.dart';

class TopNavBarWidget extends StatefulWidget {
  const TopNavBarWidget({super.key});

  @override
  State<TopNavBarWidget> createState() => _TopNavBarWidgetState();
}

class _TopNavBarWidgetState extends State<TopNavBarWidget> {
  late TopNavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopNavBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 1.0,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 10.0, 0.0),
              child: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setDarkModeSetting(
                      context,
                      (Theme.of(context).brightness == Brightness.dark
                              ? false
                              : true)
                          ? ThemeMode.dark
                          : ThemeMode.light,
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.asset(
                      Theme.of(context).brightness == Brightness.dark
                          ? 'assets/images/vitruvian_light.png'
                          : 'assets/images/vitruvian.png',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(HomePageWidget.routeName);
              },
              child: Text(
                'Omer Attia',
                style: FlutterFlowTheme.of(context).displayMedium.override(
                      font: GoogleFonts.interTight(
                        fontWeight: FlutterFlowTheme.of(context)
                            .displayMedium
                            .fontWeight,
                        fontStyle: FlutterFlowTheme.of(context)
                            .displayMedium
                            .fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).displayMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).displayMedium.fontStyle,
                    ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Visibility(
                  visible: responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          wrapWithModel(
                            model: _model.topMenuButtonModel1,
                            updateCallback: () => safeSetState(() {}),
                            updateOnChange: true,
                            child: TopMenuButtonWidget(
                              str: 'Home',
                              page: NavPages.HOME,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.topMenuButtonModel2,
                            updateCallback: () => safeSetState(() {}),
                            updateOnChange: true,
                            child: TopMenuButtonWidget(
                              str: 'Projects',
                              page: NavPages.PROJECTS,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.topMenuButtonModel3,
                            updateCallback: () => safeSetState(() {}),
                            updateOnChange: true,
                            child: TopMenuButtonWidget(
                              str: 'Skills & Experience',
                              page: NavPages.SKILLS,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
