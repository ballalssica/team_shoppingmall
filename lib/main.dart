import 'package:flutter/material.dart';
import 'package:team_shoppingmall/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(), // HomePage를 첫 화면으로 설정
    );
  }
}
