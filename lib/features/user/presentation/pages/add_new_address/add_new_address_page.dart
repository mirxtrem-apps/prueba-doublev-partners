import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/shared/widgets/buttons/buttons.dart';
import 'package:flutter_tdd/core/shared/widgets/inputs/inputs.dart';
import 'package:flutter_tdd/core/shared/widgets/labels/title_label.dart';

class AddNewAddressPage extends StatelessWidget {
  const AddNewAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Form(
              child: Column(
            children: [
              const TitleLabel(text: "New Address"),
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
                  Navigator.pop(context);
                },
              ),
            ],
          )),
        ),
      ),
    );
  }
}
