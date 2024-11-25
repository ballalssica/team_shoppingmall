
import 'package:flutter/material.dart';

class RegistrationInput extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 375,
        child: Column(
          children: [
            Row(
              children: [
                Text('상품 등록',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                )),
                SizedBox(width: 20), 
              ],
            ),
            const SizedBox(height: 16), 
            Row(
              children: [
                const Text('상품 가격'),
                const SizedBox(width: 10), 
                const Text('상품 가격 입력'),
              ],
            ),
            const SizedBox(height: 16), 
            Row(
              children: [
                const Text('상품 설명'),
                const SizedBox(width: 10), 
                const Text('상품 설명 입력'),
          ],
        ),
      ],
        ),
      ),
    );
  }
}