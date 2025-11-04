import 'package:get/get.dart';
import 'package:latihan_11pplg2/bindings/loginAPIBinding.dart';
import 'package:latihan_11pplg2/pages/Player_edit_page.dart';
import 'package:latihan_11pplg2/pages/bottom_nav_page.dart';
import 'package:latihan_11pplg2/pages/calculator_page.dart';
import 'package:latihan_11pplg2/pages/login_page.dart';
import 'package:latihan_11pplg2/pages/loginAPIPage.dart';
import 'package:latihan_11pplg2/pages/player_list_page.dart';
import 'package:latihan_11pplg2/routes/routes.dart';

class AppPages {
  static final pages = [
    // Login API dengan Binding
    GetPage(
      name: AppRoutes.loginAPI,
      page: () => const LoginAPIPage(),
      binding: LoginAPIBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: AppRoutes.calculator,
      page: () => const CalculatorPage(),
    ),
    GetPage(
      name: AppRoutes.playerList,
      page: () => PlayerListPage(),
    ),
    GetPage(
      name: AppRoutes.playerEdit,
      page: () => const PlayerEditPage(),
    ),
    GetPage(
      name: AppRoutes.bottomNavPage,
      page: () => BottomNavPage(),
    ),
  ];
}