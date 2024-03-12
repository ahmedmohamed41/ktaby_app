import 'package:flutter/material.dart';
import 'package:ktaby_app/core/style.dart';

class CustomButtonDetails extends StatelessWidget {
  const CustomButtonDetails({
    super.key,
    required this.text,
    required this.colorText,
    required this.backgroundColor,
    required this.topLeft,
    required this.bottomLeft,
    required this.topRight,
    required this.bottomRight,
    this.onTap,
  });
  final String text;
  final Color colorText;
  final Color backgroundColor;
  final double topLeft;
  final double bottomLeft;
  final double topRight;
  final double bottomRight;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 50,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft),
            bottomLeft: Radius.circular(bottomLeft),
            bottomRight: Radius.circular(bottomRight),
            topRight: Radius.circular(topRight),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.bold,
              color: colorText,
            ),
          ),
        ),
      ),
    );
  }
}
