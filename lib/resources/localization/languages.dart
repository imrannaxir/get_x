import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'English_US': {
          'email': 'Enter Email',
          'internet_exception':
              "We are unable to show results.\n Please check your data \n connection.",
          'general_exception':
              "We are unable to process your reruest.\n Please try again",
          'welcome_back': "Welcome\n Back",
          'login': "Login",
          'email_hint': "Email",
          'password_hint': "Password",
        },
        'UR_PK': {
          'email_hint': 'ای میل درج کریں',
        }
      };
}
