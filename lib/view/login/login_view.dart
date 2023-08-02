import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/resources/components/round_button.dart';
import 'package:get_x/utils/utils.dart';
import '../../view_models/controller/login/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  /*
  
  */
  final loginViewModel = Get.put(LoginController());
  final _formKey = GlobalKey<FormState>();
  /*
  
  */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'login'.tr,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        //automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: loginViewModel.emailController.value,
                    focusNode: loginViewModel.emailFocusNode.value,
                    decoration: InputDecoration(
                      hintText: 'email_hint'.tr,
                      border: const OutlineInputBorder(),
                    ),
                    validator: (Value) {
                      if (Value == null || Value.isEmpty) {
                        Utils.snackBar('Email', 'Enter Your Email');
                      }
                    },
                    onFieldSubmitted: (value) {
                      Utils.fieldFocusChange(
                        context,
                        loginViewModel
                            .emailFocusNode.value, // Current Focus Node
                        loginViewModel
                            .passwordFocusNode.value, // Next Focus Node
                      );
                    },
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    controller: loginViewModel.passwordController.value,
                    focusNode: loginViewModel.passwordFocusNode.value,
                    decoration: InputDecoration(
                      hintText: 'password_hint'.tr,
                      border: const OutlineInputBorder(),
                    ),
                    obscureText: true,
                    validator: (Value) {
                      if (Value == null || Value.isEmpty) {
                        Utils.snackBar('Password', 'Enter Your Password');
                      }
                    },
                    onFieldSubmitted: (value) {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Obx(() {
              return RoundButton(
              title: 'login'.tr,
              loading: loginViewModel.loading.value,
              onPress: () {
                if (_formKey.currentState!.validate()) {
                  loginViewModel.loginApi();
                } 
              },
            );
            })
          ],
        ),
      ),
    );
  }
}
