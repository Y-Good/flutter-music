import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:g_music/app/config/g_color.dart';
import 'package:g_music/app/config/g_iconfont.dart';
import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFFAFAFA),
        title: const Text(
          'Settings',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account',
              style: TextStyle(fontSize: 14),
            ),
            ...List.generate(
              4,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: GColor.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        GIconFont.iconProfileFill,
                        size: 20,
                        color: GColor.primary,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        'Profile',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Icon(
                      CupertinoIcons.right_chevron,
                      size: 20,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
