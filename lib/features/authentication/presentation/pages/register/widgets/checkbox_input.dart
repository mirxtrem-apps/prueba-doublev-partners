import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/label_styles.dart';

class CheckboxInput extends StatelessWidget {
  const CheckboxInput({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final bool value;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: CheckboxListTile(
        title: Text("Acept terms and conditions...", style: LabelStyle.caption(),),
        controlAffinity: ListTileControlAffinity.leading,
        value: true,
        onChanged: onChanged,
      ),
    );
  }
}
