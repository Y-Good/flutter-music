
import 'package:get/get.dart';

import '../../../../models/personalized_model.dart';
import '../../../../models/providers/personalized_provider.dart';

class HomeController extends GetxController {
  final PersonalizedProvider provider = Get.find<PersonalizedProvider>();
  final personList = <Personalized>[].obs;

  @override
  Future<void> onInit() async {
    personList.value = await provider.getPersonalized();
    super.onInit();
  }
}
