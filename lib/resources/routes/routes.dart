import 'package:get/get.dart';
import 'package:get_x/resources/routes/routes_name.dart';
import 'package:get_x/view/home/home_view.dart';
import 'package:get_x/view/login/login_view.dart';
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
          name: RoutesName.loginView,
          page: () {
            return const LoginView();
          },
          transition: Transition.leftToRightWithFade,
          transitionDuration: const Duration(milliseconds: 250),
        ),
        GetPage(
          name: RoutesName.homeView,
          page: () {
            return const HomeView();
          },
          transition: Transition.leftToRightWithFade,
          transitionDuration: const Duration(milliseconds: 250),
        ),
      ];
}
