import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/shared/widgets/modals/modals.dart';
import 'package:flutter_tdd/features/authentication/presentation/bloc/auth_bloc.dart';

import '/core/routes/app_routes.dart';
import '/core/shared/widgets/buttons/buttons.dart';
import '/core/shared/widgets/inputs/inputs.dart';
import '/core/shared/widgets/labels/title_label.dart';

class ShippingAddressPage extends StatelessWidget {
  const ShippingAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    TextEditingController addressCtrl = TextEditingController();
    TextEditingController cityCtrl = TextEditingController();
    TextEditingController stateCtrl = TextEditingController();
    TextEditingController zipcodeCtrl = TextEditingController();

    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          loading: () => _showLoadingModal(context),
          userUpdated: () {
            Navigator.pop(context);
            _goToNext(context);
          },
          failure: (message) => _showErrorMessage(context, message),
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              FlatButton(
                label: "Skip",
                onPressed: () => _goToNext(context),
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
                  TextInput(
                    key: const Key("address"),
                    controller: addressCtrl,
                    labelText: "Address",
                  ),
                  TextInput(
                    key: const Key("city"),
                    controller: cityCtrl,
                    labelText: "City",
                  ),
                  TextInput(
                    key: const Key("state"),
                    controller: stateCtrl,
                    labelText: "State",
                  ),
                  ZipCodeInput(
                    key: const Key("zipcode"),
                    controller: zipcodeCtrl,
                    labelText: "Zip Code",
                  ),
                  SolidButton(
                    label: "Finish",
                    onPressed: () => authBloc.add(
                      AddShippingAddressEvent(
                        city: cityCtrl.text,
                        state: stateCtrl.text,
                        address: addressCtrl.text,
                        zipcode: zipcodeCtrl.text,
                      ),
                    ),
                  ),
                ],
              )),
            ),
          ),
        );
      },
    );
  }

  _showLoadingModal(BuildContext context) {
    Modals.showLoadingModal(
      context,
      title: "Saving Address...",
      message: "Please wait",
    );
  }

  _goToNext(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      Routes.home,
      (route) => route.settings.name == Routes.home,
    );
  }

  _showErrorMessage(BuildContext context, String message) {
    Navigator.pop(context);
    Modals.showSimpleModal(
      context,
      title: "Upps!",
      message: message,
    );
  }
}
