import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/resources/assets/assets_images.dart';
import 'package:get_x/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('email_hint'.tr),
        centerTitle: true,
      ),
      body: const Image(
        image: AssetImage(
          AssetsImages.splashScreen,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Utils.toastMessage('Hey , I\'m Here');
          Utils.toastMessageCenter('Hey , I\'m not Here');
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
