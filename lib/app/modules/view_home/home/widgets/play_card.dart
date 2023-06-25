import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/g_avatar.dart';
import '../../../../config/g_color.dart';
import '../../../../config/g_iconfont.dart';
import '../../../../routes/app_pages.dart';

///
/// @Author: YGood
/// @Description: 你在做咩呀
/// @CreateDate: 2022-08-08 15:00
/// @UpdateDate: 2022-08-08 15:00
class PlayCard extends StatelessWidget {
  PlayCard({Key? key, this.img}) : super(key: key);

  final String? img;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.PLAY),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: BoxDecoration(
          color: const Color(0xFF0957DE),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF004ED5).withOpacity(0.28),
              offset: const Offset(0, 29),
              blurRadius: 25,
              spreadRadius: -30,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GAvatar(url: img, size: 112, radius: 8),
              const SizedBox(width: 16),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'New release',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white60,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'The Thrill Of it All',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Sam Smith ● 3:42',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        GIconFont.iconPlayBold,
                        size: 24,
                        color: GColor.white,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
