import 'package:flutter/material.dart';

class ProductRegistration extends StatelessWidget {
  const ProductRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('상품등록'),
      ),
      body: const Center(
        child: Text(
          'Hello!!!!!',
          style: TextStyle(
            fontFamily: 'NotoSnas'
          )
        ),
      ),
    );
  }
}