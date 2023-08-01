import 'package:get_x/data/network/network_api_services.dart';
import 'package:get_x/resources/app_url/app_url.dart';

class LoginRepository {
  /*
  
  */
  final _apiServices = NetworkApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic response = _apiServices.postApi(data, AppUrl.loginApi);
    return response;
  }
}
