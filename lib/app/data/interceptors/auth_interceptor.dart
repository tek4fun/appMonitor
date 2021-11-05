import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> authInterceptor(Request request) async {
  final token = ''; // lay storage
  request.headers['X-Requested-With'] = 'XMLHttpRequest';
  request.headers['Authorization'] = 'Bearer $token';
  return request;
}
