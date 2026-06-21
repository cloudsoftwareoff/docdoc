
import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.text, this.padding});
  final EdgeInsets? padding;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 20),
      child: Text(text, style: context.textStyles.headlineMedium),
    );
  }
}
