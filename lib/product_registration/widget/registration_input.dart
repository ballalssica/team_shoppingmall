
import 'package:flutter/material.dart';

class RegistrationInput extends StatefulWidget{
  @override
  State<RegistrationInput> createState() => _RegistrationInputState();
}

class _RegistrationInputState extends State<RegistrationInput> {
  
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();


  @override
    
    // 컨트롤러 해제
    void dispose() {
    _nameController.dispose();
    _priceController.dispose();
    _descriptionController.dispose();
    super.dispose();
    }

    // 입력데이터
    void _saveData() {
    String name = _nameController.text;
    String price = _priceController.text;
    String description = _descriptionController.text;

    print('상품 이름: $name');
    print('상품 가격: $price');
    print('상품 설명: $description');

    // 데이터저장 로직 추가 예정
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 375,
        child: Column(
          children: [

            //상품이름입력
            Row(
              children: [
                Text('상품 가격',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                )),
                SizedBox(width: 20), 
                Expanded(
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: '상품이름을 입력하세요',
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(30),
                         borderSide: BorderSide.none,
                      ),
                    ),
                  ))
              ],
            ),
            const SizedBox(height: 18), 



            //상품가격입력
            Row(
              children: [
                Text('상품 이름',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                )),
                SizedBox(width: 20), 
                Expanded(
                  child: TextField(
                    controller: _priceController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: '숫자만 입력가능',
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(30),
                         borderSide: BorderSide.none,
                      ),
                    ),
                  )),
                  SizedBox(width: 20), 
                  Text('원',
                  style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                  ),),
              ],
            ),
            const SizedBox(height: 18),             

            // 상품설명입력
            Row(
              children: [
                Text('상품 설명',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                )),
                SizedBox(width: 20), 
                Expanded(
                  child: TextField(
                    controller: _descriptionController,
                    decoration: InputDecoration(
                      hintText: '상품설명을 입력해주세요',
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(30),
                         borderSide: BorderSide.none,
                      ),
                    ),
                  ))
              ],
            ),
      ],
        ),
      ),
    );
  }
}