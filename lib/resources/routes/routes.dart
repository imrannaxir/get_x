import 'package:get/get.dart';
import 'package:get_x/login.dart';
import 'package:get_x/resources/routes/routes_name.dart';
import 'package:get_x/view/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.splashScreen,
          page: () {
            return const SplashScreen();
          },
          transition: Transition.leftToRightWithFade,
          transitionDuration: const Duration(milliseconds: 250),
        ),
        GetPage(
          name: RoutesName.loginScreen,
          page: () {
            return const LoginScreen();
          },
          transition: Transition.leftToRightWithFade,
          transitionDuration: const Duration(milliseconds: 250),
        ),
      ];
}
