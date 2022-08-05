import 'package:get/get.dart';

import '../controllers/view_splash_controller.dart';

class ViewSplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewSplashController>(
      () => ViewSplashController(),
    );
  }
}
