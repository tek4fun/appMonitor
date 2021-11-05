import 'dart:convert';

import 'package:app_monitors/app/data/domain/models/sampleModel.dart';
import 'package:app_monitors/app/data/domain/models/sampleNotification.dart';
import 'package:app_monitors/app/data/provider/api_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class ApiRepository {
  // inject api provider
  final ApiProvider provider = Get.find<ApiProvider>();

  Future<SampleModel> test() async {
    final dynamic res = await provider.test('/todos/1');
    if (res.statusCode == 200) {
      return SampleModel.fromJson(res?.body);
    } else {
      throw Error();
    }
  }

  Future<List<SampleNotification>> testNotificationList() async {
    final res = await provider.test('/posts');
    if (res.statusCode == 200) {
      final bodyString = res.bodyString;
      if (bodyString != null) {
        return parseNotificationData(bodyString);
      }
      throw Error();
    } else {
      throw Error();
    }
  }

  List<SampleNotification> parseNotificationData(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parsed
        .map<SampleNotification>((json) => SampleNotification.fromJson(json))
        .toList();
  }
}
