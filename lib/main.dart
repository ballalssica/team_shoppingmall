import 'package:flutter/material.dart';
import 'package:team_shoppingmall/pages/home_page.dart';
import 'package:team_shoppingmall/pages/product_cart.dart';
import 'package:team_shoppingmall/pages/product_details.dart';
import 'package:team_shoppingmall/pages/product_registration.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('쇼핑몰'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: const Text('홈페이지'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductRegistration()),
                );
              },
              child: const Text('상품등록'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductDetails()),
                );
              },
              child: const Text('상품상세'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductCart()),
                );
              },
              child: const Text('장바구니'),
            ),
          ],
        ),
      ),
    );
  }
}
