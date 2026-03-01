import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/projects/language_image/language_image_widget.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'project_viewing_model.dart';
export 'project_viewing_model.dart';

class ProjectViewingWidget extends StatefulWidget {
  const ProjectViewingWidget({
    super.key,
    this.projectDetails,
    this.closeView,
  });

  final ProjectCardStruct? projectDetails;
  final Future Function()? closeView;

  @override
  State<ProjectViewingWidget> createState() => _ProjectViewingWidgetState();
}

class _ProjectViewingWidgetState extends State<ProjectViewingWidget>
    with TickerProviderStateMixin {
  late ProjectViewingModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProjectViewingModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  Color _statusColor(ProjectStatus status) {
    switch (status) {
      case ProjectStatus.Completed:
        return Color(0xFF2E7D32);
      case ProjectStatus.InProgress:
        return Color(0xFFE65100);
      case ProjectStatus.Archived:
        return Color(0xFF546E7A);
    }
  }

  String _statusLabel(ProjectStatus status) {
    switch (status) {
      case ProjectStatus.Completed:
        return 'Completed';
      case ProjectStatus.InProgress:
        return 'In Progress';
      case ProjectStatus.Archived:
        return 'Archived';
    }
  }

  IconData _statusIcon(ProjectStatus status) {
    switch (status) {
      case ProjectStatus.Completed:
        return Icons.check_circle_outline;
      case ProjectStatus.InProgress:
        return Icons.autorenew;
      case ProjectStatus.Archived:
        return Icons.archive_outlined;
    }
  }

  @override
  Widget build(BuildContext context) {
    final project = widget.projectDetails;

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Material(
          color: Colors.transparent,
          elevation: 20.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            constraints: BoxConstraints(
              maxWidth: 800.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: [
                BoxShadow(
                  blurRadius: 30.0,
                  color: Color(0x33000000),
                  offset: Offset(0.0, 2.0),
                )
              ],
              borderRadius: BorderRadius.circular(24.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).tertiary,
                width: 1.0,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                // Header bar
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context)
                        .primaryBackground
                        .withOpacity(0.5),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24.0),
                      topRight: Radius.circular(24.0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await widget.closeView?.call();
                          },
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Icon(
                              Icons.arrow_back,
                              color:
                                  FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                          ),
                        ),
                        SizedBox(width: 12.0),
                        Expanded(
                          child: Text(
                            valueOrDefault<String>(
                              project?.name,
                              'Project',
                            ),
                            overflow: TextOverflow.ellipsis,
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FontWeight.w700,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                        ),
                        if (project?.hasStatus() ?? false)
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 6.0),
                            decoration: BoxDecoration(
                              color: _statusColor(project!.status)
                                  .withOpacity(0.15),
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                color: _statusColor(project.status)
                                    .withOpacity(0.4),
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  _statusIcon(project.status),
                                  color: _statusColor(project.status),
                                  size: 16.0,
                                ),
                                SizedBox(width: 6.0),
                                Text(
                                  _statusLabel(project.status),
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                        ),
                                        color:
                                            _statusColor(project.status),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        if ((project?.githubLink ?? '').isNotEmpty)
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await launchURL(project!.githubLink);
                              },
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF211F38),
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).tertiary,
                                    width: 1.0,
                                  ),
                                ),
                                child: Center(
                                  child: FaIcon(
                                    FontAwesomeIcons.github,
                                    color: Colors.white,
                                    size: 22.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        if ((project?.previewLink ?? '').isNotEmpty)
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'WasmPreviewPage',
                                  queryParameters: {
                                    'wasmPath': serializeParam(
                                      project!.previewLink,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Color(0x3a006e),
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).tertiary,
                                    width: 1.0,
                                  ),
                                ),
                                child: Center(
                                  child: FaIcon(
                                    FontAwesomeIcons.eye,
                                    color: Colors.white,
                                    size: 22.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),

                // Scrollable content
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Languages row
                        if (project?.langs.isNotEmpty ?? false) ...[
                          Text(
                            'Languages',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          SizedBox(height: 8.0),
                          Wrap(
                            spacing: 10.0,
                            runSpacing: 10.0,
                            children: project!.langs.map((lang) {
                              return Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 8.0),
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius:
                                      BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 28.0,
                                      height: 28.0,
                                      decoration: BoxDecoration(
                                        color: Color(0x20FFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: LanguageImageWidget(
                                        lang: lang,
                                      ),
                                    ),
                                    SizedBox(width: 8.0),
                                    Text(
                                      lang.name,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight: FontWeight.w500,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                          SizedBox(height: 16.0),
                        ],

                        // Tags
                        if (project?.tags.isNotEmpty ?? false) ...[
                          Text(
                            'Tags',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          SizedBox(height: 8.0),
                          Wrap(
                            spacing: 8.0,
                            runSpacing: 8.0,
                            children: project!.tags.map((tag) {
                              return Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 14.0, vertical: 8.0),
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primary.withOpacity(0.1),
                                  borderRadius:
                                      BorderRadius.circular(20.0),
                                ),
                                child: Text(
                                  tag.name,
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.w500,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              );
                            }).toList(),
                          ),
                          SizedBox(height: 20.0),
                        ],

                        // Divider
                        Divider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        SizedBox(height: 16.0),

                        // Summary
                        if (project?.hasSummary() ?? false) ...[
                          Text(
                            'Summary',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          SizedBox(height: 6.0),
                          Text(
                            project!.summary,
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w400,
                                ),
                          ),
                          SizedBox(height: 20.0),
                        ],

                        // Description
                        if (project?.hasDescription() ?? false) ...[
                          Text(
                            'Description',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          SizedBox(height: 6.0),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground
                                  .withOpacity(0.5),
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .alternate,
                                width: 1.0,
                              ),
                            ),
                            child: Text(
                              project!.description,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w400,
                                    lineHeight: 1.6,
                                  ),
                            ),
                          ),
                          SizedBox(height: 20.0),
                        ],

                        // Features
                        if (project?.features.isNotEmpty ?? false) ...[
                          Text(
                            'Key Features',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          SizedBox(height: 8.0),
                          ...project!.features
                              .asMap()
                              .entries
                              .map((entry) {
                            return Padding(
                              padding:
                                  EdgeInsets.only(bottom: 8.0),
                              child: Row(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 6.0),
                                    child: Container(
                                      width: 8.0,
                                      height: 8.0,
                                      decoration: BoxDecoration(
                                        color:
                                            FlutterFlowTheme.of(context).primary,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12.0),
                                  Expanded(
                                    child: Text(
                                      entry.value,
                                      style: FlutterFlowTheme.of(
                                              context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FontWeight.w400,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FontWeight.w400,
                                            lineHeight: 1.5,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                          SizedBox(height: 12.0),
                        ],
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
      ),
    );
  }
}
