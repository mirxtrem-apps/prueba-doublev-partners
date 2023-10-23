import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/core/routes/app_routes.dart';
import '/core/shared/widgets/buttons/solid_button.dart';
import '/core/shared/widgets/inputs/inputs.dart';
import '/core/shared/widgets/labels/title_label.dart';
import '/core/shared/widgets/modals/modals.dart';
import '/features/authentication/presentation/bloc/auth_bloc.dart';

class PersonalDataPage extends StatelessWidget {
  const PersonalDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          loading: () => _showLoading(context),
          userCreated: () => _goToNext(context),
          failure: (message) => _showErrorDialog(context),
        );
      },
      builder: (context, state) {
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
                  TextInput(
                    key: const Key("firstname"),
                    labelText: "FirstName",
                    controller: authBloc.firstnameCtrl,
                  ),
                  TextInput(
                    key: const Key("lastname"),
                    labelText: "LastName",
                    controller: authBloc.lastnameCtrl,
                  ),
                  DateInput(
                    key: const Key("birthdate"),
                    labelText: "Birthdate",
                    controller: authBloc.birthdateCtrl,
                  ),
                  SolidButton(
                    label: "Continue",
                    onPressed: () => authBloc.add(const CreateUserEvent()),
                  )
                ],
              )),
            ),
          ),
        );
      },
    );
  }

  Future<dynamic> _showLoading(BuildContext context) {
    return Modals.showLoadingModal(
      context,
      title: "Saving...",
      message: "Please wait.",
    );
  }

  _goToNext(BuildContext context) {
    Navigator.pop(context);
    Navigator.pushReplacementNamed(context, Routes.shippingAddress);
  }

  _showErrorDialog(BuildContext context) {
    Navigator.pop(context);
    return Modals.showLoadingModal(
      context,
      title: "Saving...",
      message: "Please wait.",
    );
  }
}
