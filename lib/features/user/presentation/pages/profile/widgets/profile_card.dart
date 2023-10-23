import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/theme/label_styles.dart';
import 'package:flutter_tdd/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:flutter_tdd/features/user/application/mappers/user_mapper.dart';

import '/core/shared/widgets/buttons/buttons.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    return Card(
      margin: const EdgeInsets.only(top: 30.0, bottom: 12.0),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 8.0, bottom: 8.0, left: 12.0, right: 4.0),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: const CircleAvatar(
            child: Icon(Icons.person_outline_rounded),
          ),
          title: Text(
            "${authBloc.userEntity?.fullName}",
            key: const Key("username"),
            style: LabelStyle.subtitle(),
          ),
          subtitle: Text(
            "${authBloc.userEntity?.email.value}",
            key: const Key("email"),
            style: LabelStyle.paragraph(),
          ),
          trailing: FlatButton(
            label: "Edit",
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
