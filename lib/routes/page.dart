import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:latihan_11pplg2/pages/Player_edit_page.dart';
import 'package:latihan_11pplg2/pages/bottom_nav_page.dart';
import 'package:latihan_11pplg2/pages/calculator_page.dart';
import 'package:latihan_11pplg2/pages/player_list_page.dart';
import 'package:latihan_11pplg2/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.calculator,
      page: () => CalculatorPage(),
    ),
    GetPage(
      name: AppRoutes.playerList,
      page: () => PlayerListPage(),
    ),
    GetPage(
      name: AppRoutes.playerEdit,
      page: () => const PlayerEditPage(), // ✅ Versi tanpa parameter langsung
    ),
    GetPage(name: AppRoutes.bottomNavPage,
    page: () => BottomNavPage()),
  ];
}
