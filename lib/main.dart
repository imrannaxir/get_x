import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/home_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const HomeScreen(),
    );
  }
}



/*
  GetX has 3 basic principles :
    1) PRODUCTIVITY
    2) PERFORMANCE 
    3) ORGANIZATION.


  State management 
    Get has two different state managers: 
    The simple state manager (we'll call it GetBuilder) and
    the reactive state manager (GetX/Obx)   

 */