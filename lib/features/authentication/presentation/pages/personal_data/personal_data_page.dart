import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/routes/app_routes.dart';
import 'package:flutter_tdd/core/shared/widgets/buttons/solid_button.dart';
import 'package:flutter_tdd/core/shared/widgets/inputs/inputs.dart';
import 'package:flutter_tdd/core/shared/widgets/labels/title_label.dart';

class PersonalDataPage extends StatelessWidget {
  const PersonalDataPage({super.key});

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
              const TitleLabel(text: "Personal Data"),
              const TextInput(
                key: Key("firstname"),
                labelText: "FirstName",
              ),
              const TextInput(
                key: Key("lastname"),
                labelText: "LastName",
              ),
              const DateInput(
                key: Key("birthdate"),
                labelText: "Birthdate",
              ),
              SolidButton(
                label: "Continue",
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(Routes.shippingAddress);
                },
              )
            ],
          )),
        ),
      ),
    );
  }
}
