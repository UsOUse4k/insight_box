import 'package:flutter/material.dart';

class WrapperScaffold extends StatelessWidget {
  const WrapperScaffold(this.navigator, {super.key});

  final Widget navigator;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigator,
    );
  }
}
