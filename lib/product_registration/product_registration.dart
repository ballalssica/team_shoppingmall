import 'package:flutter/material.dart';

class ProductRegistration extends StatelessWidget {
  const ProductRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('농산물 등록하기'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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