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
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'projects_model.dart';
export 'projects_model.dart';

class ProjectsWidget extends StatefulWidget {
  const ProjectsWidget({super.key});

  static String routeName = 'Projects';
  static String routePath = '/projects';

  @override
  State<ProjectsWidget> createState() => _ProjectsWidgetState();
}

class _ProjectsWidgetState extends State<ProjectsWidget> {
  late ProjectsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProjectsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().curPage = NavPages.PROJECTS;
      safeSetState(() {});
      safeSetState(() {
        _model.textController?.text = ((List<String> var1, List<String> var2) {
          return [...var1, ...var2].join(', ');
        }(
            FFAppState()
                .filterOptionsLanguages
                .map((e) => e.name)
                .toList()
                .toList(),
            FFAppState()
                .filterOptionsTags
                .map((e) => e.name)
                .toList()
                .toList()));
      });
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            background: wrapWithModel(
              model: _model.topNavBarModel,
              updateCallback: () => safeSetState(() {}),
              child: TopNavBarWidget(),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20.0),
            child: Container(),
          ),
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () {
                                    FocusScope.of(context).unfocus();
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                  },
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: FilterOptionsWidget(),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));

                            safeSetState(() {
                              _model.textController?.text =
                                  ((List<String> var1, List<String> var2) {
                                return [...var1, ...var2].join(', ');
                              }(
                                      FFAppState()
                                          .filterOptionsLanguages
                                          .map((e) => e.name)
                                          .toList(),
                                      FFAppState()
                                          .filterOptionsTags
                                          .map((e) => e.name)
                                          .toList()));
                            });
                          },
                          child: Icon(
                            Icons.filter_list,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 15.0, 10.0),
                          child: Container(
                            width: 200.0,
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              autofocus: false,
                              enabled: false,
                              readOnly: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                labelText: 'Filters',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3.0,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 3.0,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 3.0,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 3.0,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              enableInteractiveSelection: false,
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Builder(
                      builder: (context) {
                        final projects = FFAppState()
                            .projects
                            .where((e) => () {
                                  if (!(FFAppState()
                                          .filterOptionsLanguages
                                          .isNotEmpty) &&
                                      !(FFAppState()
                                          .filterOptionsTags
                                          .isNotEmpty)) {
                                    return true;
                                  } else if (functions.hasLanguagesIntersection(
                                          e.langs.toList(),
                                          FFAppState()
                                              .filterOptionsLanguages
                                              .toList()) ||
                                      functions.hasTagsIntersection(
                                          e.tags.toList(),
                                          FFAppState()
                                              .filterOptionsTags
                                              .toList())) {
                                    return true;
                                  } else {
                                    return false;
                                  }
                                }())
                            .toList();

                        final screenWidth = MediaQuery.sizeOf(context).width;
                        final crossAxisCount = screenWidth < 500
                            ? 1
                            : screenWidth < 800
                                ? 2
                                : screenWidth < 1200
                                    ? 3
                                    : 4;
                        final childAspectRatio = screenWidth < 500
                            ? 1.1
                            : screenWidth < 800
                                ? 0.95
                                : 1.0;

                        return GridView.builder(
                          padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: crossAxisCount,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                            childAspectRatio: childAspectRatio,
                          ),
                          scrollDirection: Axis.vertical,
                          itemCount: projects.length,
                          itemBuilder: (context, projectsIndex) {
                            final projectsItem = projects[projectsIndex];
                            final seed = projectsItem.name.hashCode;
                            final rng = Random(seed);
                            final angle = rng.nextDouble() * 90.0;
                            final colors = List.generate(
                                2 + rng.nextInt(2),
                                (_) => Color.fromARGB(
                                      255,
                                      rng.nextInt(256),
                                      rng.nextInt(256),
                                      rng.nextInt(256),
                                    ));
                            return CardProjectWidget(
                              key: Key(
                                  'Keyd6d_${projectsIndex}_of_${projects.length}'),
                              name: projectsItem.name,
                              gradientAngle: angle,
                              boxColors: colors,
                              lang: projectsItem.langs,
                              tags: projectsItem.tags,
                              summary: projectsItem.summary,
                              ghLink: projectsItem.githubLink,
                              openView: () async {
                                _model.isViewingProject = true;
                                _model.currentViewingProject = projectsItem;
                                safeSetState(() {});
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              if (_model.isViewingProject)
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0x5A000000),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: wrapWithModel(
                      model: _model.projectViewingModel,
                      updateCallback: () => safeSetState(() {}),
                      child: ProjectViewingWidget(
                        projectDetails: _model.currentViewingProject,
                        closeView: () async {
                          _model.isViewingProject = false;
                          safeSetState(() {});
                        },
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
