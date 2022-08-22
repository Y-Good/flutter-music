import 'package:g_music/app/config/g_server.dart';
import 'package:get/get.dart';

import '../user_model.dart';

class UserProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) => User.fromJson(map);
    httpClient.baseUrl = GServer.baseUrl;
  }

  Future<User?> getUser() async {
    final response =
        await get('/login/cellphone?phone=13238576287&password=000000a');
    return response.body;
  }
}
