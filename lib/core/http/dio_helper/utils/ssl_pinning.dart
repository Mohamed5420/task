import 'dart:io';

import 'package:flutter/services.dart';

class SSlPinning {
  void applySSLPinning() async {
    // Set SecurityContext to not trust the OS's certificates
    SecurityContext(withTrustedRoots: false);
    // Load certificate file
    ByteData data = await rootBundle.load("");
    SecurityContext context = SecurityContext.defaultContext;
    // Trust the certificate
    context.setTrustedCertificatesBytes(data.buffer.asUint8List());
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}
