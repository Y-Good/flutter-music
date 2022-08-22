import 'package:g_music/app/data/models/providers/personalized_provider.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<PersonalizedProvider>(
      () => PersonalizedProvider(),
    );
  }
}
