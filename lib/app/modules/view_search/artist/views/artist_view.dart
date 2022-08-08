import 'package:flutter/material.dart';
import 'package:g_music/app/config/g_color.dart';
import 'package:g_music/app/config/g_iconfont.dart';
import 'package:get/get.dart';

import '../controllers/artist_controller.dart';

class ArtistView extends GetView<ArtistController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 12,
            right: 12,
            left: 12,
            height: Get.width - 24,
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
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment(0, 8),
                  colors: [Colors.transparent, Colors.black],
                  tileMode: TileMode.clamp,
                ),
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
    );
  }
}
