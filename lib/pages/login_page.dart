import 'package:flutter/material.dart';
import 'package:flutter_animation/common/button.dart';
import 'package:flutter_animation/common/text.dart';
import 'package:flutter_animation/common/text_form_field.dart';

import '../utils/navigation.dart';
import 'register_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    login() {}

    return Scaffold(
      body: Column(
        children: [
          CustomTextFormField(controller: _emailController),
          CustomTextFormField(controller: _passwordController),
          CustomButton(
            text: 'Login',
            onPressed: login,
          ),
          Row(
            children: [
              CustomText(text: 'No Account Yet,'),
              CustomText(
                text: 'Create One',
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
