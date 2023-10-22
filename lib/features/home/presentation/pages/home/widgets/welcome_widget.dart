import 'package:flutter/material.dart';

import '/core/routes/app_routes.dart';
import '/core/theme/label_styles.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      color: Theme.of(context).appBarTheme.backgroundColor,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                Routes.profile,
              );
            },
            child: const CircleAvatar(
              child: Icon(Icons.person_outline_rounded),
            ),
          ),
          const SizedBox(width: 8.0),
          Text('Welcome, Username', style: LabelStyle.title(),),
        ],
      ),
    );
  }
}
