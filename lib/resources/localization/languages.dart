import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'English_US': {
          'email_hint': 'Enter Email',
          'internet_exception' : "We are unable to show results.\n Please check your data \n connection.",
        },
        'UR_PK': {
          'email_hint': 'ای میل درج کریں',
        }
      };
}
