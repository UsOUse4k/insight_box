import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(''),
          const TextField(),
          const TextField(),
          const TextField(),
          ElevatedButton(
            onPressed: () {},
            child: const Text(''),
          ),
        ],
      ),
    );
  }
}
