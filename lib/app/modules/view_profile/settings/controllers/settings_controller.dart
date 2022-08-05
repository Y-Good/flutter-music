import 'package:flutter/material.dart';
import 'package:g_music/app/config/g_iconfont.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  List<SettingItem> get settingList => [
        SettingItem(GIconFont.iconProfileFill, 'Profile'),
        SettingItem(GIconFont.iconAudioFill, 'Account Plan'),
        SettingItem(GIconFont.iconLockFill, 'Security'),
        SettingItem(GIconFont.iconMusicPlayFill, 'S'),
        SettingItem(GIconFont.iconFolderFill, 'S'),
        SettingItem(GIconFont.iconCloudConnectionFill, 'S'),
      ];
}

class SettingItem {
  final IconData icon;
  final String title;
  SettingItem(this.icon, this.title);
}
