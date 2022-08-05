import 'package:get/get.dart';

import '../controllers/view_sign_in_controller.dart';

class ViewSignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewSignInController>(
      () => ViewSignInController(),
    );
  }
}
