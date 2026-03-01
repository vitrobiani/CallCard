import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:web/web.dart' as web;

/// Downloads a file from the given URL with the specified filename.
/// Works on web by creating an anchor element with download attribute.
void downloadFileFromUrl(String url, String fileName) {
  if (kIsWeb) {
    final anchor = web.document.createElement('a') as web.HTMLAnchorElement;
    anchor.href = url;
    anchor.download = fileName;
    anchor.style.display = 'none';
    web.document.body?.appendChild(anchor);
    anchor.click();
    anchor.remove();
  }
}


