import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/shared/widgets/buttons/buttons.dart';
import 'package:flutter_tdd/core/theme/label_styles.dart';

class AddressInfoTile extends StatelessWidget {
  const AddressInfoTile({
    super.key,
    required this.label,
    required this.onEdit,
  });

  final String label;
  final VoidCallback? onEdit;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        contentPadding: const EdgeInsets.only(
          left: 8.0,
          right: 4.0,
          top: 8.0,
          bottom: 8.0,
        ),
        leading: const CircleAvatar(
          child: Icon(Icons.location_on_rounded),
        ),
        title: Text(
          label,
          style: LabelStyle.paragraph(),
        ),
        trailing: FlatButton(
          label: "Edit",
          onPressed: onEdit,
        ),
      ),
    );
  }
}
