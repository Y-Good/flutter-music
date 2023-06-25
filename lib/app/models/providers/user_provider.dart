import 'package:g_music/app/config/network/base_provider.dart';

import '../user_model.dart';

class UserProvider extends BaseProvider {

  Future<User?> getUser() async {
    final response =
        await get('/login/cellphone?phone=13238576287&password=000000a');
    return User.fromJson(response.body);
  }
}
