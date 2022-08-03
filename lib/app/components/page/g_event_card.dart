import 'package:flutter/material.dart';
import 'package:g_music/app/components/g_button.dart';
import 'package:g_music/app/config/g_iconfont.dart';
import 'package:g_music/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../../config/g_color.dart';
import '../g_avatar.dart';

class GEventCard extends StatelessWidget {
  const GEventCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        color: GColor.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: GColor.primary.withOpacity(0.06),
            blurRadius: 60,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: SizedBox(
        height: 180,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.network(
                'https://img2.baidu.com/it/u=1814268193,3619863984&fm=253&app=138&size=w931&n=0&f=JPEG&fmt=auto?sec=1657990800&t=ffa8b4ad0903cff48f8723f6c2fc1f94',
                height: 180,
                width: 130,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Ultraviolence',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Lana Del Rey',
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: const [
                          GButton(
                            icon: GIconFont.iconCalendar,
                            label: '2019/05/12',
                            fontSize: 10,
                          ),
                          SizedBox(width: 5),
                          GButton(
                            icon: GIconFont.iconGps,
                            label: '贵州',
                            fontSize: 10,
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SizedBox(
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: const [
                              Positioned(child: GAvatar(size: 22, radius: 11)),
                              Positioned(
                                left: 12,
                                child: GAvatar(size: 22, radius: 11),
                              ),
                              Positioned(
                                left: 24,
                                child: GAvatar(
                                  size: 22,
                                  radius: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Text(
                        '50,000 ticket sold',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF6F6F6F),
                        ),
                      )
                    ],
                  ),
                  GButton(
                    onTap: () => Get.toNamed(Routes.EVENT_DETAIL),
                    label: 'See Detail',
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 40,
                    ),
                    borderColor: GColor.primary,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
