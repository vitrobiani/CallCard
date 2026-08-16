// import 'dart:ffi';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:web/web.dart' as web;

import '/components/tech_stack_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/download_util.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'introduction_model.dart';
export 'introduction_model.dart';

class IntroductionWidget extends StatefulWidget {
  const IntroductionWidget({super.key});

  @override
  State<IntroductionWidget> createState() => _IntroductionWidgetState();
}

class _IntroductionWidgetState extends State<IntroductionWidget> {
  late IntroductionModel _model;
  final cv_name = "omer_attia_cv.pdf";
  final cv_path = "assets/pdfs/omer_attia_cv.pdf";

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IntroductionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  Future<void> openAssetPdf() async {
    // 1. Load the PDF from assets into RAM
    final byteData = await rootBundle.load(cv_path);

    // 2. Get the device's temporary directory
    final tempDir = await getTemporaryDirectory();
    final file = File('${tempDir.path}/${cv_name}');

    // 3. Write the bytes to the temporary file
    await file.writeAsBytes(byteData.buffer.asUint8List(), flush: true);

    // 4. Open the file using the device's default application
    await OpenFilex.open(file.path);
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6.0),
      child: Container(
        width: double.infinity,
        constraints: BoxConstraints(
          maxWidth: 700.0,
        ),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Software Engineer',
              // style: FlutterFlowTheme.of(context).bodyMedium
              style: TextStyle(
                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                color: FlutterFlowTheme.of(context).secondaryText,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              FFAppConstants.intro,
              // style: FlutterFlowTheme.of(context).bodyLarge
              style: TextStyle(
                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 22.0,
                fontWeight: FontWeight.w500,
              )
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(ProjectsWidget.routeName);
                    },
                    text: 'View Projects',
                    options: FFButtonOptions(
                      width: 150.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).tertiary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleMedium,
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      // downloadFileFromUrl('assets/pdfs/omer-attia-cv.pdf', 'omer-attia-cv.pdf');
                      if (kIsWeb) {
                        // Open the asset directly in a new browser tab using its URL path
                        web.window.open(cv_path, '_blank');
                      } else {
                        openAssetPdf();
                      }
                    },
                    text: 'Resume',
                    icon: FaIcon(
                      FontAwesomeIcons.file,
                      size: 18.0,
                    ),
                    options: FFButtonOptions(
                      width: 150.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.transparent,
                      textStyle:
                          FlutterFlowTheme.of(context).titleMedium,
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).secondary,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ].divide(SizedBox(width: 20.0)),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: wrapWithModel(
                  model: _model.techStackModel,
                  updateCallback: () => safeSetState(() {}),
                  child: TechStackWidget(),
                ),
              ),
            ),
          ].divide(SizedBox(height: 8.0)),
        ),
      ),
    );
  }
}
