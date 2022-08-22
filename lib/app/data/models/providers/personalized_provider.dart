import 'package:g_music/app/config/g_server.dart';
import 'package:g_music/app/data/network/api/music_api.dart';
import 'package:get/get.dart';

import '../personalized_model.dart';

class PersonalizedProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      var e = map['result'];
      if (e is Map<String, dynamic>) return Personalized.fromJson(e);
      if (e is List) {
        return e.map((item) => Personalized.fromJson(item)).toList();
      }
    };
    httpClient.baseUrl = GServer.baseUrl;
  }

  Future<List<Personalized>> getPersonalized() async {
    final response = await get("${MusicApi.personalized}?limit=5");
    return response.body;
  }
}
