import 'dart:async';
import 'package:get/get.dart';
import 'package:get_x/resources/routes/routes_name.dart';
import 'package:get_x/view_models/controller/user_preference.dart/user_preference.dart';

class SplashServices {
  //
  UserPreference userPreference = UserPreference();
  //

  void isLogin() {
    userPreference.getUser().then((value) {
      print(value.token);
       print(value.isLogin);

      if (value.isLogin == false || value.isLogin.toString() == 'null') {
        Timer(const Duration(seconds: 3), () {
          Get.toNamed(RoutesName.loginView);
        });
      } else {
        Timer(const Duration(seconds: 2), () {
          Get.toNamed(RoutesName.homeView);
        });
      }
    });
  }
}
