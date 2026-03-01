import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui_web' as ui_web;
import 'package:web/web.dart' as web;
import 'package:flutter/material.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'wasm_preview_page_model.dart';
export 'wasm_preview_page_model.dart';

class WasmPreviewPageWidget extends StatefulWidget {
  const WasmPreviewPageWidget({
    super.key,
    required this.wasmPath,
  });

  final String wasmPath;

  static String routeName = 'WasmPreviewPage';
  static String routePath = '/wasmPreview';

  @override
  State<WasmPreviewPageWidget> createState() => _WasmPreviewPageWidgetState();
}

class _WasmPreviewPageWidgetState extends State<WasmPreviewPageWidget> {
  late WasmPreviewPageModel _model;
  late String _viewType;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WasmPreviewPageModel());

    // Create unique view type for this instance
    _viewType = 'wasm-iframe-${DateTime.now().millisecondsSinceEpoch}';

    // Register the iframe view factory
    ui_web.platformViewRegistry.registerViewFactory(
      _viewType,
      (int viewId) {
        final iframe = web.HTMLIFrameElement()
          ..src = 'wasm_loader.html?path=${Uri.encodeComponent(widget.wasmPath)}'
          ..style.border = 'none'
          ..style.width = '100%'
          ..style.height = '100%'
          ..allowFullscreen = true;
        return iframe;
      },
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            // WASM iframe - fills entire screen
            Positioned.fill(
              child: HtmlElementView(
                viewType: _viewType,
              ),
            ),
            // Semi-transparent back button
            Positioned(
              top: 16.0,
              left: 16.0,
              child: SafeArea(
                child: PointerInterceptor(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        context.safePop();
                      },
                      borderRadius: BorderRadius.circular(12.0),
                      child: Container(
                        width: 48.0,
                        height: 48.0,
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(alpha: 0.7),
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: Colors.white.withValues(alpha: 0.3),
                            width: 1.0,
                          ),
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 24.0,
                        ),
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




