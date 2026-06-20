import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:phone_field_plus/phone_field_plus.dart';

class CustomPhoneTextField extends StatelessWidget {
  const CustomPhoneTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return PhoneField(
      decoration: InputDecoration(
        hintText: hint,
      ).applyDefaults(context.inputFieldTheme),
    );
  }
}