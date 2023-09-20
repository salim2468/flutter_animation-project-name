import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double? marginVertical;
  final double? width;
  final Color? color;
  final Color? textColor;
  final Function() onPressed;

  final bool loading;

  const CustomButton({
    required this.text,
    this.marginVertical,
    this.width,
    required this.onPressed,
    this.loading = false,
    this.color,
    this.textColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 55,
        width: width ?? double.maxFinite,
        margin: EdgeInsets.symmetric(vertical: marginVertical ?? 0),
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color ?? Colors.blue,
          borderRadius: BorderRadius.circular(5),
        ),
        child: loading
            ? const CircularProgressIndicator()
            : Text(
                text,
                style:
                    TextStyle(fontSize: 18, color: textColor ?? Colors.black),
              ),
      ),
    );
  }
}
