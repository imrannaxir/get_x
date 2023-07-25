import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/example_three_controller.dart';

class ExampleThree extends StatefulWidget {
  const ExampleThree({super.key});

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {
  /*
   
  */

  // bool notification = false; // Here we use it bt seState() ;

  ExampleThreeController exampleThreeController =
      Get.put(ExampleThreeController());

  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Three'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Notifications'), // Arrow , Lambda function
              Obx(() {
                return Switch(
                  // value: notification, // seState
                  value: exampleThreeController.notification.value,
                  onChanged: (value) {
                    // notification = value; // seState
                    // setState(() {});
                    exampleThreeController.setNotification(value);
                  },
                );
              })
            ],
          ),
        ],
      ),
    );
  }
}
