import 'package:g_music/app/data/models/providers/user_provider.dart';
import 'package:g_music/app/data/models/user_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin<User> {
  final provider = Get.find<UserProvider>();
  @override
  void onInit() {
    print('object');
    provider.getUser();
    super.onInit();
  }
}
