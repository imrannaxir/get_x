import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogAndBottomSheet extends StatefulWidget {
  const DialogAndBottomSheet({super.key});

  @override
  State<DialogAndBottomSheet> createState() => _DialogAndBottomSheetState();
}

class _DialogAndBottomSheetState extends State<DialogAndBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GetX',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text('GetX Dialog'),
              subtitle: const Text(
                'I\'m a Flutter Developer with 2year experience and I have also done Bachelor in Computer Science.',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Get.defaultDialog(
                  title: 'YouTube',
                  titlePadding: const EdgeInsets.only(top: 20),
                  contentPadding: const EdgeInsets.only(top: 20),
                  middleText: 'Are you sure , You want to exit this App',
                  confirm: SizedBox(
                    height: Get.mediaQuery.size.height * 0.05,
                    width: Get.mediaQuery.size.width * 0.1,
                    child: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text(
                        'Yes',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  cancel: SizedBox(
                    height: Get.mediaQuery.size.height * 0.05,
                    width: Get.mediaQuery.size.width * 0.1,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'No',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  // content: const Column(
                  //   children: [
                  //     Text('ALHAMDULILLAH'),
                  //     Text('ALHAMDULILLAH'),
                  //     Text('ALHAMDULILLAH'),
                  //     Text('ALHAMDULILLAH'),
                  //     Text('ALHAMDULILLAH'),
                  //   ],
                  // ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: ListTile(
              title: const Text('GetX BottomSheet'),
              subtitle: const Text(
                'GetX has 3 basic principles, PRODUCTIVITY, PERFORMANCE AND ORGANIZATION.',
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(
                          Icons.light_mode,
                        ),
                        title: const Text('Light Theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.dark_mode,
                        ),
                        title: const Text('Dark Theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                ));
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            'Imran Nazeer',
            'I wanna go to Australia',
            backgroundColor: Colors.white,
            icon: const Icon(Icons.favorite),
            snackPosition: SnackPosition.BOTTOM,
            mainButton: TextButton(
              onPressed: () {
                // Navigate to another screen through GEtX
                // Get.to(Home());
              },
              child: const Text(
                'Click',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            onTap: (snap) {},
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
