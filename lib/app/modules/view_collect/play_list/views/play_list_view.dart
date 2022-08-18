import 'package:flutter/material.dart';
import 'package:g_music/app/components/g_circular_bg_button.dart';
import 'package:g_music/app/config/g_color.dart';
import 'package:g_music/app/config/g_iconfont.dart';
import 'package:get/get.dart';

import '../controllers/play_list_controller.dart';

class PlayListView extends GetView<PlayListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GColor.backgroundColor,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            'Your Playlist',
            style: TextStyle(fontSize: 20, color: GColor.secondary900),
          ),
        ),
        leadingWidth: Get.width,
        title: null,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            child: GCircularBgButton(
              icon: GIconFont.iconSearch,
              border: true,
              iconColor: GColor.secondary0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            child: GCircularBgButton(
              icon: Icons.add,
              border: true,
              iconColor: GColor.secondary0,
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'PlayListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
