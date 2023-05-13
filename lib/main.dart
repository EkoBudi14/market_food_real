import 'package:flutter/material.dart';
import 'package:market_food/presentation/pages/home/main_page.dart';
import 'package:market_food/presentation/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
      // onGenerateRoute: (RouteSettings settings) {},
    );
  }
}
