import 'package:get/get.dart';

import '../../config/g_server.dart';
import '../models/user_model.dart';

///
/// @Author: YGood
/// @Description: 你在做咩呀
/// @CreateDate: 2022-08-22 14:34
/// @UpdateDate: 2022-08-22 14:34
class BaseConnect extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = GServer.baseUrl;
    httpClient.defaultDecoder = (map) => User.fromJson(map);
  }
}
