import 'package:doctorine/core/extensions/build_context_extensions.dart';
import 'package:doctorine/core/widgets/title_text.dart';
import 'package:flutter/material.dart';

class TextTitleWithTextButton extends StatelessWidget {
  const TextTitleWithTextButton({
    super.key,
    required this.titleText,
    required this.buttonText,
    this.onPressed,
    this.padding,
  });
  final String titleText;
  final String buttonText;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleText(text: titleText),
          TextButton(
            onPressed: onPressed,
            child: Text(
              buttonText,
              style: context.textStyles.bodyMedium?.copyWith(
                color: context.colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
