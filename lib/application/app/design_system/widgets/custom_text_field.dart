import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? labelText;
  final String? suffixText;
  final String? Function(String?)? validator;
  CustomTextField({
    this.onChanged,
    this.controller,
    this.keyboardType,
    this.labelText,
    this.suffixText,
    this.validator,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        suffixText: suffixText,
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
      onChanged: onChanged,
    );
  }
}
