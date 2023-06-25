import 'package:g_music/app/config/network/base_provider.dart';

import '../../config/network/api/music_api.dart';
import '../personalized_model.dart';

class PersonalizedProvider extends BaseProvider {
  Future<List<Personalized>> getPersonalized() async {
    final response = await get("${MusicApi.personalized}?limit=5");
    var jsons = response.body?['result'];
    if (jsons is List) {
      return jsons.map((item) => Personalized.fromJson(item)).toList();
    }
    return [];
  }
}
