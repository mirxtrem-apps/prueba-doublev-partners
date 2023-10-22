import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/routes/app_routes.dart';
import 'package:flutter_tdd/core/shared/widgets/buttons/buttons.dart';
import 'package:flutter_tdd/core/shared/widgets/inputs/inputs.dart';
import 'package:flutter_tdd/core/shared/widgets/labels/title_label.dart';
import 'package:flutter_tdd/core/theme/label_styles.dart';

class EditAddressPage extends StatelessWidget {
  const EditAddressPage({super.key});

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
              const TitleLabel(text: "Edit Address"),
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
                label: "Save Changes",
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SolidButton(
                label: "Delete",
                backgroundColor: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            "¿Are you sure?",
                            style: LabelStyle.title(),
                          ),
                          content: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("This action can not be undone"),
                            ],
                          ),
                          actions: [
                            FlatButton(
                              label: "No",
                              onPressed: () => Navigator.pop(context),
                            ),
                            FlatButton(
                              label: "Yes, I do",
                              onPressed: () => Navigator.popUntil(
                                context,
                                (r) => r.settings.name == Routes.addressList,
                              ),
                            ),
                          ],
                        );
                      });
                },
              ),
            ],
          )),
        ),
      ),
    );
  }
}
