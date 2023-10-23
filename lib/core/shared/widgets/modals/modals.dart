import 'package:flutter/material.dart';

import '/core/theme/label_styles.dart';

class Modals {
  static Future<T?> showLoadingModal<T>(BuildContext context, {
    required String title,
    required String message,
    bool barrierDismissible = true,
  }) {
    return showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) => AlertDialog(
        title: Text(title, style: LabelStyle.title()),
        content: Row(
          children: [
            const CircularProgressIndicator(),
            const SizedBox(width: 8.0),
            Text(message, style: LabelStyle.paragraph()),
          ],
        ),
      ),
    );
  }

  static Future<T?> showSimpleModal<T>(
    BuildContext context, {
    required String title,
    required String message,
  }) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title, style: LabelStyle.title()),
        content: Text(message, style: LabelStyle.paragraph()),
      ),
    );
  }
}
