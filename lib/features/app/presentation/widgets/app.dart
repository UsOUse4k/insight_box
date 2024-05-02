import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:insight_box/core/di/injection.dart';
import 'package:insight_box/core/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: getIt<GoRouter>(),
      theme: AppTheme.currentTheme,
    );
  }
}
