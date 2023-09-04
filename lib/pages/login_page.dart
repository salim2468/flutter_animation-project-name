import 'package:flutter/material.dart';
import 'package:flutter_animation/widgets/select_widget.dart';

import '../widgets/select.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            child: const Text('Press'),
            onPressed: () {},
          ),
          Select(),
          Text('data')
        ],
      ),
    );
  }
}
