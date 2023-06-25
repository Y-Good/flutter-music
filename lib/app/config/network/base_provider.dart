import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import '../../config/g_server.dart';

///
/// @Author: YGood
/// @Description: 你在做咩呀
/// @CreateDate: 2022-08-22 14:34
/// @UpdateDate: 2022-08-22 14:34
class BaseProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = GServer.baseUrl;
    // httpClient.addRequestModifier<void>((request) {
    //   request.headers['token'] =
    //       '6e9c9ba1f56d406fb35926475906f9215f0a099abae929eb041cb59900de955a';
    //   return request;
    // });

    // httpClient.addAuthenticator<dynamic>((Request request) async {
    //   // Set the header
    //   request.headers['token'] =
    //       '6e9c9ba1f56d406fb35926475906f9215f0a099abae929eb041cb59900de955a';
    //   return request;
    // });

    httpClient.addResponseModifier((request, response) {
      return response;
    });
    super.onInit();
  }
}
