import '/core/routes/app_routes.dart';

import '/features/authentication/presentation/pages/personal_data/personal_data_page.dart';
import '/features/authentication/presentation/pages/register/register_page.dart';
import '/features/authentication/presentation/pages/shipping_address/shipping_address_page.dart';
import '/features/home/presentation/pages/home/home_page.dart';
import '/features/home/presentation/pages/splash/splash_page.dart';
import '/features/user/presentation/pages/add_new_address/add_new_address_page.dart';
import '/features/user/presentation/pages/address_list/address_list_page.dart';
import '/features/user/presentation/pages/profile/profile_page.dart';
import '/features/user/presentation/pages/edit_address/edit_address_page.dart';

abstract class AppPages {
  static get routes => {
    Routes.splash: (context) => const SplashPage(),
    Routes.register: (context) => const RegisterPage(),
    Routes.personalData: (context) => const PersonalDataPage(),
    Routes.shippingAddress: (context) => const ShippingAddressPage(),
    Routes.home: (context) => const HomePage(),
    Routes.profile: (context) => const ProfilePage(),
    Routes.addressList: (context) => const AddressListPage(),
    Routes.addNewAddress: (context) => const AddNewAddressPage(),
    Routes.editAddress: (context) => const EditAddressPage(),
  };
}
