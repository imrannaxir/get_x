import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 0.obs;
  increment() {
    return count++;
  }

  decrement() {
    return count--;
  }
}

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(context) {
    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    final Controller c = Get.put(Controller());

    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Counter Screen',
        ),
      ),

      //

      // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(
            () {
              return Text(
                "Counting : ${c.count}",
              );
            },
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: Get.mediaQuery.size.height * 0.06,
            width: Get.mediaQuery.size.width * 0.25,
            child: ElevatedButton(
              child: const Text(
                "Go to Other",
              ),
              onPressed: () {
                Get.to(
                  Other(),
                );
              },
            ),
          ),
        ],
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: c.increment,
            child: const Icon(
              Icons.add,
            ),
          ),
          FloatingActionButton(
            onPressed: c.decrement,
            child: const Icon(
              Icons.remove,
            ),
          ),
        ],
      ),
    );
  }
}

class Other extends StatelessWidget {
  Other({super.key});
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final Controller c = Get.find();

  @override
  Widget build(context) {
    // Access the updated count variable
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "${c.count}",
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: Get.mediaQuery.size.height * 0.06,
              width: Get.mediaQuery.size.width * 0.25,
              child: ElevatedButton(
                child: const Text(
                  "Go Back",
                ),
                onPressed: () {
                  Get.back();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
    GetX has 3 basic principles :
     1) PRODUCTIVITY
     2) PERFORMANCE
     3) ORGANIZATION.

 */
