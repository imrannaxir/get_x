import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/counter_controller.dart';
import 'package:get_x/example_two_controller.dart';

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({super.key});

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {
  /*
   
  */

  ExampleTwoController exampleTwoController = Get.put(ExampleTwoController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Two'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Container(
                height: Get.mediaQuery.size.height * 0.4,
                width: Get.mediaQuery.size.width * 0.5,
                color: Colors.red.withOpacity(
                  exampleTwoController.opacity.value,
                ),
              );
            }),
            const SizedBox(height: 10),
            Obx(() {
              return Slider(
                value: exampleTwoController.opacity.value,
                onChanged: (value) {
                  exampleTwoController.setOpacity(value);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
