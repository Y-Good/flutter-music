import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlayController extends GetxController {
  RxDouble volume = 0.0.obs;
  RxBool isOpenLyrics = true.obs;
  RxDouble tHeight = 0.0.obs;
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

  void toTracks(DragUpdateDetails d) {
    if (tHeight.value <= 0) {
      tHeight.value -= d.delta.dy;
    }
  }
}
