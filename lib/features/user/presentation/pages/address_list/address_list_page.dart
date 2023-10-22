import 'package:flutter/material.dart';

import '/core/routes/app_routes.dart';
import '/core/shared/widgets/buttons/buttons.dart';
import '/features/user/presentation/pages/address_list/widgets/address_info_tile.dart';
import '/features/user/presentation/pages/address_list/widgets/empty_list_address_view.dart';

class AddressListPage extends StatelessWidget {
  const AddressListPage({super.key});

  @override
  Widget build(BuildContext context) {
    var addressList = [];
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Addresses"),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Visibility(
          visible: addressList.isNotEmpty,
          replacement: const EmptyListAddressView(),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FlatButton(
                    label: "Add New",
                    onPressed: () => _addNewAddress(context),
                  )
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: addressList.length,
                itemBuilder: (context, index) {
                  return AddressInfoTile(
                    label: "Carrera 100A #71B 32",
                    onEdit: () {
                      Navigator.pushNamed(context, Routes.editAddress);
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _addNewAddress(BuildContext context) {
    Navigator.pushNamed(context, Routes.addNewAddress);
  }
}
