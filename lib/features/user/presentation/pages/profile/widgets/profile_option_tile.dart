import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/label_styles.dart';

class ProfileOptionTile extends StatelessWidget {
  const ProfileOptionTile({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.only(top: 12.0),
      child: ListTile(
        leading: Icon(icon),
        title: Text(label, style: LabelStyle.subtitle(),),
        onTap: onTap,
      ),
    );
  }
}
