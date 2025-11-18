import 'package:catholic_app_redesign/theme/app_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';  // Add this import
import 'package:intl/intl.dart';  // If needed for date formatting
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';
import 'router/app_router.dart';  // Import the router

void main() async {
  await initializeDateFormatting();  // Initialize intl
  if (defaultTargetPlatform == TargetPlatform.android) {
    WebViewPlatform.instance = AndroidWebViewPlatform();
  } else if (defaultTargetPlatform == TargetPlatform.iOS) {
    WebViewPlatform.instance = WebKitWebViewPlatform();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Catholic App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system, // Auto-detects system light/dark mode
      routerConfig: router,  // Use GoRouter
    );
  }
}