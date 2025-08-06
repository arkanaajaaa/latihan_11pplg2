import 'package:flutter/material.dart';
import 'package:latihan_11pplg2/login_page.dart'; // Pastikan path ini benar
import 'package:latihan_11pplg2/calculator_page.dart'; // Ini yang penting untuk diimpor
import 'package:latihan_11pplg2/register_page.dart'; // Pastikan path ini benar

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Mengatur CalculatorPage sebagai halaman utama yang muncul pertama kali
      home: CalculatorPage(),
    );
  }
}
