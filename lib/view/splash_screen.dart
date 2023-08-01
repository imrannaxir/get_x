import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view_models/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    super.initState();
    splashServices.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Text(
          'welcome_back'.tr,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}














// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get_x/resources/assets/assets_images.dart';
// import 'package:get_x/resources/components/general_exception.dart';
// import 'package:get_x/resources/components/internet_exception_widget.dart';
// import 'package:get_x/resources/components/round_button.dart';
// import 'package:get_x/utils/utils.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('email'.tr),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           GeneralExceptionWidget(
//             onPress: () {},
//           ),
//           const SizedBox(height: 50),
//           RoundButton(
//             title: 'Login',
//             onPress: () {},
//           )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Utils.toastMessage('Hey , I\'m Here');
//           Utils.toastMessageCenter('Hey , I\'m not Here');
//         },
//         child: const Icon(
//           Icons.add,
//         ),
//       ),
//     );
//   }
// }
