import 'package:get/get.dart';

/*
  By extending GetxController, this class gains the ability 
   to use observables and manage reactive state.
*/
class ExampleThreeController extends GetxController {
  // Here we can use final or Rxbool
  RxBool notification = false.obs;

  setNotification(bool value) {
    notification.value = value;
  }
}
