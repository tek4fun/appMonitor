import 'package:app_monitors/app/data/domain/models/sampleModel.dart';
import 'package:app_monitors/app/data/provider/base_provider.dart';
import 'package:get/get.dart';

abstract class ApiProviderInterface {
  Future<Response> test(String path);
}

class ApiProvider extends BaseProvider implements ApiProviderInterface {
  /*temp*/
  // Future<Response> login(String path, LoginRequest data) {
  //   return post(path, data.toJson());
  // }
  @override
  Future<Response> test(String path) {
    return get(path);
  }
}
