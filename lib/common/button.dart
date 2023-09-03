import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double? marginVertical;
  final double? width;
  final Function() onPressed;
  const CustomButton(
      {required this.text,
      this.marginVertical,
      this.width,
      required this.onPressed,
      super.key});

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
          color: Colors.blue,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
