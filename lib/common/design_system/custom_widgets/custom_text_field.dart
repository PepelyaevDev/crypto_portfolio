import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
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
      style: context.styles.bodyMedium!,
      decoration: InputDecoration(
        suffixText: suffixText,
        labelText: labelText,
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        border: OutlineInputBorder(),
        suffixStyle: context.styles.bodyMedium!,
        labelStyle: context.styles.bodySmall!,
        floatingLabelStyle: MaterialStateTextStyle.resolveWith(
          (states) => _getStyle(
            states,
            context,
          ),
        ),
      ),
      onChanged: onChanged,
    );
  }

  TextStyle _getStyle(Set<MaterialState> states, BuildContext context) {
    return context.styles.bodySmall!.copyWith(color: _getColor(states, context));
  }

  Color _getColor(Set<MaterialState> states, BuildContext context) {
    if (states.contains(MaterialState.error)) {
      return context.colors.error;
    } else if (states.contains(MaterialState.focused)) {
      return context.colors.primary;
    } else {
      return context.colors.onBackground;
    }
  }
}
