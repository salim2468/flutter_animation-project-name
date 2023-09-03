import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final bool? obscureText;
  final double? borderRadius;
  final double? horizontalMargin;
  final double? verticalMargin;
  final Color? borderColor;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final String? label;

  const CustomTextFormField({
    super.key,
    required this.controller,
    this.obscureText,
    this.borderRadius,
    this.horizontalMargin,
    this.verticalMargin,
    this.borderColor,
    this.keyboardType,
    this.validator,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalMargin ?? 0, vertical: verticalMargin ?? 0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText ?? false,
        keyboardType: keyboardType,
        validator: validator,
        decoration: InputDecoration(
            label: label != null ? Text(label!) : null,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 0),
                borderSide: BorderSide(
                  color: borderColor ?? Colors.black,
                )),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 0),
              borderSide: BorderSide(
                color: borderColor ?? Colors.black,
              ),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 0),
                borderSide:
                    BorderSide(color: borderColor ?? Colors.black, width: 2))),
      ),
    );
  }
}
