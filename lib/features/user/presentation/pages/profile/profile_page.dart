import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/shared/widgets/buttons/solid_button.dart';
import 'package:flutter_tdd/features/user/presentation/pages/profile/widgets/profile_option_tile.dart';

import '/features/user/presentation/pages/profile/widgets/profile_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const ProfileCard(),
            ProfileOptionTile(
              label: "My Shipping Adrresses",
              icon: Icons.location_on_rounded,
              onTap: () {},
            ),
            ProfileOptionTile(
              label: "My Orders",
              icon: Icons.receipt_outlined,
              onTap: () {},
            ),
            ProfileOptionTile(
              label: "My Payment Methods",
              icon: Icons.credit_card,
              onTap: () {},
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SolidButton(
          backgroundColor: Colors.red,
          textColor: Colors.white,
          label: "Log out",
          onPressed: () {},
        ),
      ),
    );
  }
}
