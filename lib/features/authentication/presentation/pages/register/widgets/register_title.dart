import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/label_styles.dart';

class RegisterTitle extends StatelessWidget {

  const RegisterTitle({ super.key });

   @override
   Widget build(BuildContext context) {
       return Container(
          width: double.infinity,
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Text(
            "Register",
            style: LabelStyle.heading(),
          ),
        );
  }
}