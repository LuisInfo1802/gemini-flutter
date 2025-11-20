import 'package:flutter/material.dart';
import 'package:gemini_app/config/router/AppRouter.dart';
import 'package:gemini_app/config/theme/AppTheme.dart';

void main() {
  Apptheme.setSysteUIOverlayStyle(isDarkMode: true);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: Apptheme(isDarkMode: true).getTheme(),
    );
  }
}
