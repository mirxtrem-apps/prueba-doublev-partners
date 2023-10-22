import 'package:flutter/material.dart';

class SolidButton extends StatelessWidget {
  const SolidButton({
    super.key,
    required this.label,
    this.textColor,
    this.backgroundColor,
    this.onPressed,
  });

  final String label;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(backgroundColor),
        ),
        child: Text(
          label,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
