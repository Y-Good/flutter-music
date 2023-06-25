import 'package:get/get.dart';
import '../../../../models/providers/user_provider.dart';
import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<UserProvider>(() => UserProvider());
  }
}
