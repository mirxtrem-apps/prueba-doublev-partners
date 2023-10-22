import 'package:flutter/material.dart';

import '/core/routes/app_routes.dart';
import '/core/shared/widgets/buttons/buttons.dart';
import '/core/shared/widgets/inputs/inputs.dart';
import '/core/shared/widgets/labels/title_label.dart';

class ShippingAddressPage extends StatelessWidget {
  const ShippingAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          FlatButton(
            label: "Skip",
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Form(
              child: Column(
            children: [
              const TitleLabel(text: "Shipping Address"),
              const TextInput(
                key: Key("address"),
                labelText: "Address",
              ),
              const TextInput(
                key: Key("city"),
                labelText: "City",
              ),
              const TextInput(
                key: Key("state"),
                labelText: "State",
              ),
              const TextInput(
                key: Key("zipcode"),
                labelText: "Zip Code",
              ),
              SolidButton(
                label: "Finish",
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    Routes.home,
                    (route) => route.settings.name == Routes.home,
                  );
                },
              ),
            ],
          )),
        ),
      ),
    );
  }
}
