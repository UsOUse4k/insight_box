import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:insight_box/core/di/injection.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: getIt<GoRouter>(),
    );
  }
}
