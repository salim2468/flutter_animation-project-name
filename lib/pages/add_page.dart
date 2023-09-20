import 'package:flutter/material.dart';
import 'package:flutter_animation/common/button.dart';
import 'package:flutter_animation/common/text.dart';
import 'package:flutter_animation/common/text_form_field.dart';

import '../common/calendar.dart';

class AddPage extends StatelessWidget {
  AddPage({super.key});
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    login() {}

    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: "Add Record",
          fontWeight: FontWeight.bold,
        ),
        centerTitle: false,
        leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(18),
          padding: const EdgeInsets.all(18),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8)),
              boxShadow: [
                BoxShadow(spreadRadius: 2, color: Colors.grey, blurRadius: 4)
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: 'Amount',
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              CustomTextFormField(
                controller: _emailController,
                borderColor: Colors.grey,
                borderRadius: 8,
                bottomMargin: 10,
                hintText: 'Enter Amount',
              ),
              const CustomText(
                text: 'Category',
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              CustomTextFormField(
                controller: _passwordController,
                borderColor: Colors.grey,
                borderRadius: 8,
                bottomMargin: 10,
              ),
              const CustomText(
                text: 'Date',
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              CustomCalendar(
                bottomMargin: 10,
                onDateChanged: (p0) {},
              ),
              CustomTextFormField(
                controller: _emailController,
                borderColor: Colors.grey,
                borderRadius: 8,
                bottomMargin: 10,
              ),
              const CustomText(
                text: 'Note',
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              CustomTextFormField(
                controller: _passwordController,
                borderColor: Colors.grey,
                borderRadius: 8,
                bottomMargin: 10,
                hintText: 'Enter Note',
              ),
              CustomButton(
                text: 'Add Record',
                onPressed: login,
                color: Colors.black,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
