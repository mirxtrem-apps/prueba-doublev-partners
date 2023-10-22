import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/label_styles.dart';

class TitleLabel extends StatelessWidget {
  const TitleLabel({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Text(
        text,
        style: LabelStyle.heading(),
      ),
    );
  }
}
