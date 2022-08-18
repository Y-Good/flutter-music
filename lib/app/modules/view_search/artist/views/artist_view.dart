import 'package:flutter/material.dart';
import 'package:g_music/app/components/g_avatar.dart';
import 'package:g_music/app/components/g_circular_bg_button.dart';
import 'package:g_music/app/components/g_section_title.dart';
import 'package:g_music/app/components/page/g_scroll_row.dart';
import 'package:g_music/app/config/g_color.dart';
import 'package:g_music/app/config/g_iconfont.dart';
import 'package:get/get.dart';

import '../controllers/artist_controller.dart';

class ArtistView extends GetView<ArtistController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 24, top: 12, bottom: 12),
          child: GCircularBgButton(),
        ),
        backgroundColor: Colors.transparent,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24, top: 12, bottom: 12),
            child: GCircularBgButton(
              icon: GIconFont.iconArchive1,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://pics3.baidu.com/feed/cefc1e178a82b901bd62ddcd4f9b0c7d3812ef26.jpeg?token=406a62dfcb0518c2ac2d21e224b84032',
                    ),
                  ),
                ),
                Positioned(
                  top: 12,
                  right: 12,
                  left: 12,
                  height: Get.width - 24,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment(0, 8),
                        colors: [Colors.transparent, Colors.black],
                        tileMode: TileMode.clamp,
                      ),
                    ),
                  ),
                ),
                //真聪明
                Positioned(
                  top: Get.width - 64,
                  right: 28,
                  child: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                Positioned(
                  top: Get.width - 72,
                  right: 24,
                  left: 24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Conan Gray',
                        style: TextStyle(fontSize: 32, color: GColor.white),
                      ),
                      Icon(
                        GIconFont.iconPlayBold,
                        size: 32,
                        color: GColor.primary,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const GScrollRow(
              title: 'Singles',
              subTitle: 'Popular single from Conan Gray',
            ),
            const SizedBox(height: 32),
            const GSectionTitle(
              title: 'Albums',
              subTitle: 'Latest albums',
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: GAvatar(size: 60, radius: 4),
                ),
                SizedBox(
                  height: 60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Grow',
                        style:
                            TextStyle(fontSize: 16, color: GColor.secondary900),
                      ),
                      Text(
                        '2021 Album',
                        style:
                            TextStyle(fontSize: 12, color: GColor.secondary0),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
