import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:g_music/app/components/page/g_scroll_row.dart';
import 'package:g_music/app/config/g_iconfont.dart';
import 'package:g_music/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../../../../components/g_appbar.dart';
import '../../../../components/g_avatar.dart';
import '../../../../config/g_color.dart';
import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GAppBar(
        leadingWidth: 80,
        leadingText: 'Search',
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Center(
              child: GAvatar(
                size: 40,
                radius: 20,
                url:
                    'https://img0.baidu.com/it/u=3340421010,713548021&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500',
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 24,
                bottom: 16,
                right: 16,
                left: 16,
              ),
              child: CupertinoTextField(
                decoration: BoxDecoration(
                  color: GColor.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                prefix: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Icon(
                    GIconFont.iconSearch,
                    color: Colors.grey,
                  ),
                ),
                placeholder: 'Search artist, music or events',
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, idx) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: GScrollRow(
                    title: 'Artist',
                    onTap: () => Get.toNamed(Routes.ARTIST),
                  ),
                );
              },
              itemCount: 6,
            ),
          ],
        ),
      ),
    );
  }
}
