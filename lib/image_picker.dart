import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/image_picker_controller.dart';

class MyImagePicker extends StatefulWidget {
  const MyImagePicker({super.key});

  @override
  State<MyImagePicker> createState() => _MyImagePickerState();
}

class _MyImagePickerState extends State<MyImagePicker> {
  /*
   
  */

  ImagePickerController imagePickerController =
      Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
        centerTitle: true,
      ),
      body: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: imagePickerController.imagePath.isNotEmpty
                    ? FileImage(
                        File(imagePickerController.imagePath.toString()))
                    : null,
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                imagePickerController.getImage();
              },
              child: const Text(
                'Pick Image',
              ),
            ),
          ],
        );
      }),
    );
  }
}
