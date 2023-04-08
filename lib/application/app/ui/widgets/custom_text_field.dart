import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? labelText;
  final String? Function(String?)? validator;
  CustomTextField({
    this.onChanged,
    this.controller,
    this.keyboardType,
    this.labelText,
    this.validator,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onChanged: onChanged,
    );
  }
}
