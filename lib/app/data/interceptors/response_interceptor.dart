import 'dart:async';

import 'package:app_monitors/app/core/utils/app_log.dart';
import 'package:app_monitors/app/data/domain/models/error_response.dart';
import 'package:app_monitors/app/widgets/app_toast.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<dynamic> responseInterceptor(
    Request request, Response response) async {
  AppLog.info(
      '<--- ${response.statusCode} ${response.request?.method} ${response.request?.url}');
  try {
    AppLog.info(response.bodyString);
    return response;
  } catch (error) {
    if (response.statusCode != 200) {
      return handleErrorStatus(response);
    }
  }
}

dynamic handleErrorStatus(Response response) {
  AppLog.warning(response.body);
  switch (response.statusCode) {
    case 400:
      final ErrorResponse message = ErrorResponse.fromJson(response.body);
      AppToast.showError('message error', 'Error');
      return message;
    default:
  }
}
