import 'package:flutter/material.dart';

class FlatButton extends StatelessWidget {
  const FlatButton({
    super.key,
    required this.label,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
