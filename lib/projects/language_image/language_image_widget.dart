import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'language_image_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
export 'language_image_model.dart';

class LanguageImageWidget extends StatefulWidget {
  const LanguageImageWidget({
    super.key,
    this.lang,
    this.tag,
  });

  final Languages? lang;
  final Tags? tag;

  @override
  State<LanguageImageWidget> createState() => _LanguageImageWidgetState();
}

class _LanguageImageWidgetState extends State<LanguageImageWidget> {
  late LanguageImageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LanguageImageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (widget!.lang == Languages.Java) {
          return ClipRRect(
            child: Image.asset(
              'assets/images/java_logo.png',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.fill,
            ),
          );
        } else if (widget!.lang == Languages.Python) {
          return ClipRRect(
            child: Image.asset(
              'assets/images/python.png',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.fill,
            ),
          );
        } else if (widget!.lang == Languages.C) {
          return ClipRRect(
            child: Image.asset(
              'assets/images/C_Logo.png',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.fill,
            ),
          );
        } else if (widget!.lang == Languages.Cpp) {
          return ClipRRect(
            child: Image.asset(
              'assets/images/cpp_logo.png',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.fill,
            ),
          );
        } else if (widget!.lang == Languages.Rust) {
          return ClipRRect(
            child: Image.asset(
              'assets/images/rust_logo.png',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.fill,
            ),
          );
        } else if (widget!.lang == Languages.Bash) {
          return ClipRRect(
            child: Image.asset(
              'assets/images/bash_logo.png',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.fill,
            ),
          );
        } else if (widget!.lang == Languages.Dart) {
          return ClipRRect(
            child: Image.asset(
              'assets/images/Dart_logo.png',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.fill,
            ),
          );
        } else if (widget!.lang == Languages.SQL) {
          return ClipRRect(
            child: Image.asset(
              'assets/images/sql_logo.png',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.fill,
            ),
          );
        } else if (widget!.tag == Tags.Linux) {
          return ClipRRect(
            child: Image.asset(
              'assets/images/linux_logo.png',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.fill,
            ),
          );
        } else if (widget!.tag == Tags.Docker) {
          return ClipRRect(
            child: Image.asset(
              'assets/images/docker-icon-removebg-preview.png',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          );
        } else if (widget!.tag == Tags.Nix) {
          return ClipRRect(
            child: Image.asset(
              'assets/images/nixos_logo_icon_248363.png',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.fill,
            ),
          );
        } else if (widget!.tag == Tags.Flutter) {
          return ClipRRect(
            child: Image.asset(
              'assets/images/flutter_logo.png',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.fill,
            ),
          );
        } else if (widget!.tag == Tags.Postgresql) {
          return ClipRRect(
            child: Image.asset(
              'assets/images/Postgresql_elephant.svg.png',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.fill,
            ),
          );
        } else if (widget!.tag == Tags.SQLite) {
          return ClipRRect(
            child: Image.asset(
              'assets/images/sqlite_logo.png',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.fill,
            ),
          );
        } else if (widget!.tag == Tags.Compilation) {
          return FaIcon(
            FontAwesomeIcons.cogs,
            size: 18.0,
            color: FlutterFlowTheme.of(context).primaryText,
          );
        } else if (widget!.tag == Tags.AI) {
          return FaIcon(
            FontAwesomeIcons.brain,
            size: 18.0,
            color: FlutterFlowTheme.of(context).primaryText,
          );
        } else if (widget!.tag == Tags.Algorithms) {
          return FaIcon(
            FontAwesomeIcons.diagramProject,
            size: 18.0,
            color: FlutterFlowTheme.of(context).primaryText,
          );
        } else if (widget!.tag == Tags.DataStructures) {
          return FaIcon(
            FontAwesomeIcons.sitemap,
            size: 18.0,
            color: FlutterFlowTheme.of(context).primaryText,
          );
        } else if (widget!.tag == Tags.GameDevelopment) {
          return FaIcon(
            FontAwesomeIcons.gamepad,
            size: 18.0,
            color: FlutterFlowTheme.of(context).primaryText,
          );
        } else if (widget!.tag == Tags.EmbeddedSystems) {
          return FaIcon(
            FontAwesomeIcons.microchip,
            size: 18.0,
            color: FlutterFlowTheme.of(context).primaryText,
          );
        } else if (widget!.tag == Tags.Networks) {
          return FaIcon(
            FontAwesomeIcons.networkWired,
            size: 18.0,
            color: FlutterFlowTheme.of(context).primaryText,
          );
        } else if (widget!.tag == Tags.ClientServer) {
          return FaIcon(
            FontAwesomeIcons.server,
            size: 18.0,
            color: FlutterFlowTheme.of(context).primaryText,
          );
        } else if (widget!.tag == Tags.Soldering) {
          return FaIcon(
            FontAwesomeIcons.fireBurner,
            size: 18.0,
            color: FlutterFlowTheme.of(context).primaryText,
          );
        } else if (widget!.tag == Tags.Arduino) {
          return FaIcon(
            FontAwesomeIcons.microchip,
            size: 18.0,
            color: FlutterFlowTheme.of(context).primaryText,
          );
        } else if (widget!.tag == Tags.OOD) {
          return FaIcon(
            FontAwesomeIcons.compassDrafting,
            size: 18.0,
            color: FlutterFlowTheme.of(context).primaryText,
          );
        } else if (widget!.tag == Tags.OOP) {
          return FaIcon(
            FontAwesomeIcons.objectGroup,
            size: 18.0,
            color: FlutterFlowTheme.of(context).primaryText,
          );
        } else {
          return ClipRRect(
            child: Image.asset(
              'assets/images/vitruvian.png',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.fill,
            ),
          );
        }
      },
    );
  }
}

