import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.inputType,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
    this.onTap,
    this.validator,
    this.controller,
    this.prefixIcon,
    this.isEnabled,
    this.suffixIcon,
  });
  final String labelText;
  final int maxLines;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? isEnabled;
  final TextEditingController? controller;
  final Function(String?)? onSaved;
  final Function(String)? onChanged;
  final Function()? onTap;
  final String? Function(String?)? validator;

  final TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextFormField(
        enabled: isEnabled,
        controller: controller,
        onTap: onTap,
        onSaved: onSaved,
        onChanged: onChanged,
        validator: validator,
        keyboardType: inputType,
        maxLines: maxLines,
        style: const TextStyle(fontSize: 15.0),
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          labelText: labelText,
          suffixIcon: suffixIcon,
          labelStyle: const TextStyle(color: Colors.grey),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(9),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(),
          ),
        ),
      ),
    );
  }
}
