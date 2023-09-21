import 'package:flutter/material.dart';
import 'package:widget_app/config/router/app_router.dart';
import 'package:widget_app/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectColor: 2).getTheme(),
      
    );
  }
}
