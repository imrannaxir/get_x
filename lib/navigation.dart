import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/screen_one.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Navigation Screen',
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
        children: [
          Center(
            child: SizedBox(
              height: Get.mediaQuery.size.height * 0.07,
              width: Get.mediaQuery.size.width * 0.25,
              child: TextButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return const ScreenOne();
                  //     },
                  //   ),
                  // );

                  // Get.to(
                  //   const ScreenOne(
                  //     name: 'Hi , Navigation by GetX',
                  //   ),
                  //);
                  Get.toNamed(
                    '/screenOne',
                    arguments: [
                      'Imran Nazeer',
                      'Bashir Ahmad',
                      'Flutter Developer',
                    ],
                  );
                },
                child: const Text(
                  'Screen One',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
