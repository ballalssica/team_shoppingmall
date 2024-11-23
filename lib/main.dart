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
      title: "Team Shopping Mall",
      theme: ThemeData(
        // 전체 적용 폰트: 노토산스KR
        fontFamily: 'NotoSansKR',

        // 앱바 테마 설정
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.white, 
          elevation: 5, 
          iconTheme: IconThemeData(
            color: Colors.blue,
          ),
          titleTextStyle: TextStyle(
            color: Colors.black87, 
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        // 앱바색상에 블루색상이 들어가는 것을 방지하기 위해 기본 색상 설정
        primaryColor: Colors.white, // 기본 색상 설정
        useMaterial3: false, // Material 3 비활성화
      ),
      home: const MainPage(),
    );
  }
}

// 협업 시 각자 코드 확인을 위한 임시페이지
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('쇼핑몰'),
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
                  MaterialPageRoute(
                      builder: (context) => const ProductRegistration()),
                );
              },
              child: const Text('상품등록'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProductDetails()),
                );
              },
              child: const Text('상품상세'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductCart()),
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
