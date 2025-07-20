import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomButtonWidget extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius borderRadius;
  final VoidCallback onPressed;

  const CustomButtonWidget({
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    required this.borderRadius,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
          elevation: 0,
        ),
        child: Text(text, style: Styles.textStyle18.copyWith(color: textColor)),
      ),
    );
  }
}
