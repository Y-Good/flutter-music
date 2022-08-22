import 'package:get/get.dart';

import '../../../../data/models/providers/user_provider.dart';
import '../controllers/sign_in_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
    Get.lazyPut<UserProvider>(() => UserProvider());
  }
}
