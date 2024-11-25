import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerContainer extends StatefulWidget {
  const ImagePickerContainer({super.key});

  @override
  State<ImagePickerContainer> createState() => _ImagePickerContainerState();
}

class _ImagePickerContainerState extends State<ImagePickerContainer> {
  File? _image;

  // 이미지 선택 메서드
  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300, 
      color: Colors.blue,
      child: _image == null
          ? Center(
              child: IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 50,
                ),
                onPressed: _pickImage, 
              ),
            )
          : Image.file(
              _image!,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.contain, 
            ),
    );
  }
}