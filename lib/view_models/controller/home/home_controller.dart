import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_x/data/response/status.dart';
import 'package:get_x/models/home/user_list_model.dart';
import 'package:get_x/repository/home_repository/home_repository.dart';

class HomeController extends GetxController {
/*
  
*/
  final _api = HomeRepository();

  final rxRequestStatus = Status.LOADING.obs;
  final userList = UserListModel().obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setUserList(UserListModel _value) => userList.value = _value;

  void userListApi() {
    _api.userListApi().then(
      (value) {
        setRxRequestStatus(Status.COMPLETED);
        setUserList(value);
      },
    ).onError(
      (error, stackTrace) {
        if (kDebugMode) {
          print('Error : $error');
        }
        print(stackTrace);
        setRxRequestStatus(Status.ERROR);
      },
    );
  }
}
