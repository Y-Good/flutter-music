import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:g_music/app/config/g_color.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

import '../../../../components/g_avatar.dart';
import '../../../../utils/g_utils.dart';

class PlayController extends GetxController {
  AudioPlayer player = AudioPlayer();
  final currentDuration = Duration.zero.obs;
  Duration totalDuration = Duration.zero;

  RxDouble volume = 0.0.obs;
  RxBool isOpenLyrics = true.obs;
  RxDouble tHeight = 0.0.obs;
  final isPlay = false.obs;
  double tStart = 0;
  double tEnd = 0;

  final totalTime = '00:00'.obs;
  final currentTime = '00:00'.obs;

  @override
  Future<void> onInit() async {
    GUtils.closeFloatPlay();
    totalDuration = await player.setUrl(
          'https://cm-sycdn.kuwo.cn/6b0ddd6998694fd8dfe8d881a9b79cb4/64979ab6/resource/n1/16/52/2340885041.mp3',
        ) ??
        Duration.zero;
    totalTime.value = totalDuration.toString().split('.')[0].substring(2);
    tHeight.value = -Get.height / 1.9 + 70;
    player.positionStream.listen((event) {
      currentDuration.value = event;
      currentTime.value = event.toString().split('.')[0].substring(2);
    });
    player.processingStateStream.listen((event) {
      if (event == ProcessingState.completed) {
        isPlay.value = false;
        player.stop();
      }
    });
    super.onInit();
  }

  @override
  void onClose() {
    GUtils.openFloatPlay();
    player.dispose();
    super.onClose();
  }

  Future<void> onPlay() async {
    if (isPlay.value) {
      isPlay.value = false;
      await player.pause();
    } else {
      isPlay.value = true;
      await player.play();
    }
  }

  void sliderVolume(double v) {
    volume.value = v;
  }

  void sliderProgress(double v) {
    currentDuration.value = Duration(seconds: v.toInt());
    player.seek(Duration(seconds: v.toInt()));
  }

  void openLyrics(bool v) {
    isOpenLyrics.value = v;
  }

  void upTracks(DragUpdateDetails d) {
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
