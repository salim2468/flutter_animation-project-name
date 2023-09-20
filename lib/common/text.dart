import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;

  const CustomText({
    required this.text,
    this.onPressed,
    this.fontSize,
    this.fontWeight,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize ?? 18,
          fontWeight: fontWeight ?? FontWeight.normal,
          color: color ?? Colors.black,
        ),
      ),
    );
  }
}
