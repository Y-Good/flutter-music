import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:g_music/app/config/g_color.dart';
import 'package:get/get.dart';

import '../../../../components/g_avatar.dart';

class PlayController extends GetxController {
  RxDouble volume = 0.0.obs;
  RxBool isOpenLyrics = true.obs;
  RxDouble tHeight = 0.0.obs;
  double tStart = 0;
  double tEnd = 0;
  @override
  void onInit() {
    tHeight.value = -Get.height / 1.9 + 70;
    super.onInit();
  }

  void sliderVolume(double v) {
    volume.value = v;
  }

  void openLyrics(bool v) {
    isOpenLyrics.value = v;
  }

  void upTracks(DragUpdateDetails d) {
    // print(d.delta.dy);
    // print(tHeight.value);
    tHeight.value -= d.delta.dy;
    if (tHeight.value >= 0) {
      tHeight.value = 0;
    }
    if (tHeight.value <= -Get.height / 1.9 + 70) {
      tHeight.value = -Get.height / 1.9 + 70;
    }
  }

  void end(DragEndDetails d) {
    // tEnd = d.primaryVelocity!;
    print(d.primaryVelocity!);
    if (d.primaryVelocity! < tStart) {
      tHeight.value = 0;
    } else {
      tHeight.value = -Get.height / 1.9 + 70;
    }
  }

  void start(DragStartDetails d) {
    print(d.globalPosition.dy);

    tStart = d.globalPosition.dy;
  }

  void addPlayList() {
    var addWidget = Column(
      children: [
        Row(
          children: [
            GAvatar(size: 56, radius: 4),
            const SizedBox(width: 16),
            Expanded(
              child: SizedBox(
                height: 56,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Don’t Start Now',
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      'Dua Lipa',
                      style: TextStyle(
                        fontSize: 12,
                        color: GColor.secondary0,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Icon(CupertinoIcons.ellipsis)
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            GAvatar(size: 56, radius: 4),
            const SizedBox(width: 16),
            Expanded(
              child: SizedBox(
                height: 56,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Don’t Start Now',
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      'Dua Lipa',
                      style: TextStyle(
                        fontSize: 12,
                        color: GColor.secondary0,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Icon(CupertinoIcons.ellipsis)
          ],
        )
      ],
    );

    Get.defaultDialog(
      title: 'Add your playlist',
      titleStyle: TextStyle(
        fontSize: 18,
        color: GColor.secondary900,
      ),
      content: addWidget,
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      radius: 12,
    );
  }
}
