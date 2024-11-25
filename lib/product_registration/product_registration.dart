import 'package:flutter/material.dart';
import 'package:team_shoppingmall/product_registration/widget/image_picker.dart';
import 'package:team_shoppingmall/product_registration/widget/registration_input.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ImagePickerContainer(), // 이미지 등록 위젯
          SizedBox(height: 25,),
          RegistrationInput(), // 상품등록 위젯
          
           Container(
            child: Text('상품등록버튼'),
          )         

        ],
      )
    );
  }
}