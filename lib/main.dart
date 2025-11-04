import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_11pplg2/routes/page.dart';
import 'package:latihan_11pplg2/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Login API Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color.fromARGB(255, 245, 245, 245),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 111, 112, 111),
          foregroundColor: Colors.white,
        ),
      ),

      // ✅ Initial Route ke Login API
      initialRoute: AppRoutes.loginAPI,
      getPages: AppPages.pages,

      // ✅ Transitions
      defaultTransition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 300),
      popGesture: true,
    );
  }
}