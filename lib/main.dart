import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/resources/localization/languages.dart';
import 'package:get_x/resources/routes/routes.dart';

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
      translations: Languages(),
      locale: const Locale('English', 'US'),
      // locale: const Locale('UR', 'PK'),
      fallbackLocale: const Locale('English', 'US'),
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      getPages: AppRoutes.appRoutes(),
    );
  }
} 


// eve.holt@reqres.in
// cityslicka











/*

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/languages.dart';
import 'package:get_x/login.dart';

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
      // translations: Languages(),
      // locale: const Locale('English', 'US'),
      // fallbackLocale: const Locale('English', 'US'),
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const LoginScreen(),

      // getPages: [
      //   GetPage(
      //     name: '/',
      //     page: () => const NavigationScreen(),
      //   ),
      //   GetPage(
      //     name: '/screenOne',
      //     page: () =>  ScreenOne(),
      //   ),
      //   GetPage(
      //     name: '/screenTwo',
      //     page: () => const ScreenTwo(),
      //   ),
      // ],
    );
  }
}





  State Management : 
    Get has two different state managers: 
    The simple state manager (we'll call it GetBuilder) and
    the reactive state manager (GetX/Obx)  


  GetX has 3 basic principles :
    1) PRODUCTIVITY
    2) PERFORMANCE 
    3) ORGANIZATION.

  Obs : 
    Obs stands for "Observable." It is a class provided by GetX 
    that represents an observable value.
    When you wrap a variable with Obs, it becomes reactive, meaning that any
    changes to the value will automatically trigger updates in the user interface.
    This is achieved by using GetX's reactive programming features.
  
  Obx:
    Obx is a widget provided by GetX that can be used to listen 
    to changes in an Obs variable and rebuild the UI accordingly.
    When the Obs variable changes, the Obx widget will automatically
    rebuild the part of the UI that depends on that variable.

  



    Create a new Repository 

        git init
        git add .
        git commit -m "GetX"
        git remote add origin https://github.com/imrannaxir/get_x.git
        git push -u origin master


    Push an Existing Repository 
       git add .
       git commit -m "Updated some files or folders etc."
       git push -u origin main 



 */