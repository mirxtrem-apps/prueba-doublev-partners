import 'package:flutter/material.dart';

import '/core/routes/app_routes.dart';
import '/core/shared/widgets/buttons/buttons.dart';
import '/core/theme/label_styles.dart';

class EmptyListAddressView extends StatelessWidget {
  const EmptyListAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.location_off_rounded,
            size: 50.0,
          ),
          const SizedBox(height: 12.0),
          Text(
            "There is not Address registrered",
            style: LabelStyle.title(),
          ),
          const Text("Add new one to shop"),
          const SizedBox(height: 12.0),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: SolidButton(
              label: "Add New Address",
              onPressed: () =>
                  Navigator.pushNamed(context, Routes.addNewAddress),
            ),
          ),
        ],
      ),
    );
  }
}
