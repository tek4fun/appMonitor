import 'package:app_monitors/app/data/api_constants.dart';
import 'package:app_monitors/app/data/interceptors/auth_interceptor.dart';
import 'package:app_monitors/app/data/interceptors/request_interceptor.dart';
import 'package:app_monitors/app/data/interceptors/response_interceptor.dart';
import 'package:get/get.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = ApiConstants.baseUrl;
    httpClient.addAuthenticator(authInterceptor);
    httpClient.addRequestModifier(requestInterceptor);
    httpClient.addResponseModifier(responseInterceptor);
  }
}
