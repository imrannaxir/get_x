import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Languages',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('English', 'US'));
                },
                child: const Text('English'),
              ),
              const SizedBox(width: 30),
              OutlinedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('UR', 'PK'));
                },
                child: const Text('Urdu'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
