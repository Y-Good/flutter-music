import 'package:g_music/app/data/models/personalized_model.dart';
import 'package:g_music/app/data/models/providers/personalized_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final PersonalizedProvider provider = Get.find<PersonalizedProvider>();
  final personList = <Personalized>[].obs;

  @override
  Future<void> onInit() async {
    personList.value = await provider.getPersonalized();
    super.onInit();
  }
}
