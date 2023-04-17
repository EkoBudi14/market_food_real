import 'package:flutter/material.dart';
import 'package:market_food/presentation/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
      // onGenerateRoute: (RouteSettings settings) {},
    );
  }
}
