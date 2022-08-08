import 'package:g_music/app/config/g_server.dart';
import 'package:get/get.dart';

import '../user_model.dart';

class UserProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return User.fromJson(map);
      if (map is List) return map.map((item) => User.fromJson(item)).toList();
    };
    httpClient.baseUrl = GServer.baseUrl;
  }

  Future<User?> getUser() async {
    final response =
        await get('/login/cellphone?phone=13238576287&password=000000a');
    print(response);
    return response.body;
  }

  Future<Response<User>> postUser(User user) async => await post('user', user);
  Future<Response> deleteUser(int id) async => await delete('user/$id');
}
