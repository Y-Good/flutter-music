import 'package:g_music/app/data/models/providers/user_provider.dart';
import 'package:get/get.dart';

import '../../../../data/models/user_model.dart';
import '../../../../utils/g_storage.dart';

class SignInController extends GetxController {
  final userProvider = Get.find<UserProvider>();
  User? user;

  Future<void> onSubmit() async {
    // user = await userProvider.getUser();
    GStorage.write(
      'user',
      User.fromJson({
        "followed": false,
        "backgroundUrl":
            "https://p4.music.126.net/fZciqHrVp6FlLx-6fvJsMA==/109951165324370547.jpg",
        "detailDescription": "",
        "userId": 537967696,
        "mutual": false,
        "remarkName": null,
        "authStatus": 0,
        "defaultAvatar": false,
        "djStatus": 0,
        "avatarUrl":
            "https://p3.music.126.net/zT1yTIb5nozU_8aObzbD0g==/109951164036433602.jpg",
        "accountStatus": 0,
        "userType": 0,
        "avatarImgIdStr": "109951164036433602",
        "backgroundImgIdStr": "109951165324370547",
        "expertTags": null,
        "experts": {},
        "vipType": 0,
        "nickname": "真人-",
        "birthday": 992395588000,
        "gender": 1,
        "province": 520000,
        "city": 522400,
        "avatarImgId": 109951164036433600,
        "backgroundImgId": 109951165324370540,
        "description": "",
        "signature": "",
        "authority": 0,
        "avatarImgId_str": "109951164036433602",
        "followeds": 2,
        "follows": 12,
        "eventCount": 0,
        "avatarDetail": null,
        "playlistCount": 6,
        "playlistBeSubscribedCount": 0
      }),
    );
    Get.back();
  }
}
