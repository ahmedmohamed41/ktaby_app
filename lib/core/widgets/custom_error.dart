import 'package:flutter/material.dart';
import 'package:ktaby_app/core/utils/style.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.errMassage});
  final String errMassage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMassage,
        style: Styles.textStyle18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
