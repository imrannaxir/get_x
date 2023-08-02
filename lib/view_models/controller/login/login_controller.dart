import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/models/login/user_model.dart';
import 'package:get_x/repository/login_repository/login_repository.dart';
import 'package:get_x/view/home/home_view.dart';
import 'package:get_x/view_models/controller/user_preference.dart/user_preference.dart';
import '../../../utils/utils.dart';

class LoginController extends GetxController {
  /*
    
  */

  UserPreference userPreference = UserPreference();
  final _api = LoginRepository();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;

    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text,
    };
    _api.loginApi(data).then((value) {
      loading.value = false;

      if (value['error'] == 'user not found') {
        Utils.snackBar('Error', value['error']);
      } else {
        UserModel userModel = UserModel(
          token: value['token'],
          isLogin: true,
        );
        userPreference
            .saveUser(userModel)
            .then((value) {})
            .onError((error, stackTrace) {});
        Get.to(HomeView());

        Utils.snackBar('Login', 'Login Succesfully');
      }
    }).onError((error, stackTrace) {
      loading.value = false;
      Utils.snackBar('Error', error.toString());
    });
  }
}
