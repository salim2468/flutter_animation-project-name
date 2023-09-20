import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final bool? obscureText;
  final double? borderRadius;
  final double? rightMargin;
  final double? leftMargin;
  final double? topMargin;
  final double? bottomMargin;
  final Color? borderColor;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final String? label;
  final String? hintText;

  const CustomTextFormField({
    super.key,
    required this.controller,
    this.obscureText,
    this.borderRadius,
    this.rightMargin,
    this.leftMargin,
    this.topMargin,
    this.bottomMargin,
    this.borderColor,
    this.keyboardType,
    this.validator,
    this.hintText,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: rightMargin ?? 0,
          left: leftMargin ?? 0,
          top: topMargin ?? 0,
          bottom: bottomMargin ?? 0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText ?? false,
        keyboardType: keyboardType,
        validator: validator,
        decoration: InputDecoration(
            hintText: hintText,
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
