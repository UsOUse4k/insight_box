import 'package:flutter/material.dart';
import 'package:insight_box/core/di/injection.dart';
import 'package:insight_box/features/app/presentation/widgets/app.dart';

Future<void> bootstrap() async {
  configureDependencies();

  runApp(const App());
}
