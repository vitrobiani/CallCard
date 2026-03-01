import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/projects/language_image/language_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tech_stack_model.dart';
export 'tech_stack_model.dart';

class TechStackWidget extends StatefulWidget {
  const TechStackWidget({super.key});

  final double size = 40.0;

  @override
  State<TechStackWidget> createState() => _TechStackWidgetState();
}

class _TechStackWidgetState extends State<TechStackWidget> {
  late TechStackModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TechStackModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        alignment: AlignmentDirectional(0.0, 0.0),
        padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
        width: MediaQuery.sizeOf(context).width * 0.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Column(
          spacing: 15.0,
          children: [
            Text(
              'Tech Stack',
              style: TextStyle(
                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                color: FlutterFlowTheme.of(context).secondaryText,
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Wrap(
              spacing: 30.0,
              runSpacing: 20.0,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.start,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.start,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: widget.size,
                  height: widget.size,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: wrapWithModel(
                      model: _model.languageImageModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: LanguageImageWidget(
                        lang: Languages.Java,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: widget.size,
                  height: widget.size,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: wrapWithModel(
                      model: _model.languageImageModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: LanguageImageWidget(
                        lang: Languages.Python,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: widget.size,
                  height: widget.size,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: wrapWithModel(
                      model: _model.languageImageModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: LanguageImageWidget(
                        lang: Languages.C,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: widget.size,
                  height: widget.size,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: wrapWithModel(
                      model: _model.languageImageModel4,
                      updateCallback: () => safeSetState(() {}),
                      child: LanguageImageWidget(
                        lang: Languages.Cpp,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: widget.size,
                  height: widget.size,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: wrapWithModel(
                      model: _model.languageImageModel5,
                      updateCallback: () => safeSetState(() {}),
                      child: LanguageImageWidget(
                        lang: Languages.Rust,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: widget.size,
                  height: widget.size,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: wrapWithModel(
                      model: _model.languageImageModel6,
                      updateCallback: () => safeSetState(() {}),
                      child: LanguageImageWidget(
                        tag: Tags.Linux,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: widget.size,
                  height: widget.size,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: wrapWithModel(
                      model: _model.languageImageModel7,
                      updateCallback: () => safeSetState(() {}),
                      child: LanguageImageWidget(
                        tag: Tags.Docker,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: widget.size,
                  height: widget.size,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: wrapWithModel(
                      model: _model.languageImageModel8,
                      updateCallback: () => safeSetState(() {}),
                      child: LanguageImageWidget(
                        tag: Tags.Nix,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: widget.size,
                  height: widget.size,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: wrapWithModel(
                      model: _model.languageImageModel9,
                      updateCallback: () => safeSetState(() {}),
                      child: LanguageImageWidget(
                        tag: Tags.Postgresql,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
