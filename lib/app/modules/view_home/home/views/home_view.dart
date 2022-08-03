import 'package:flutter/material.dart';
import 'package:g_music/app/components/g_avatar.dart';
import 'package:g_music/app/components/page/g_event_card.dart';
import 'package:g_music/app/config/g_color.dart';
import 'package:g_music/app/config/g_iconfont.dart';
import 'package:g_music/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 48,
        backgroundColor: GColor.backgroundColor,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Center(
            child: Text(
              '发现',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Center(child: GAvatar(size: 40, radius: 20)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                    const GAvatar(size: 112, radius: 8),
                    const SizedBox(width: 16),
                    Column(
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
                        GestureDetector(
                          onTap: () => Get.toNamed(Routes.PLAY),
                          child: Icon(
                            GIconFont.iconPlayBold,
                            size: 24,
                            color: GColor.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            _buildSectionTitle(
              title: 'Curated by our team',
              subTitle: 'Curated by our team',
            ),
            const SizedBox(height: 16),
            Container(
              constraints: const BoxConstraints(maxHeight: 180, minHeight: 160),
              width: Get.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, idx) => Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        GAvatar(size: 120, radius: 4),
                        SizedBox(height: 12),
                        Text(
                          'Blinding Lights',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'The Weeknd',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF6F6F6F),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                itemCount: 4,
              ),
            ),
            const SizedBox(height: 16),
            _buildSectionTitle(
              title: 'Music events',
              subTitle: 'Ticket still available',
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (_, idx) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: GEventCard(),
              ),
              itemCount: 5,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle({String? title, String? subTitle}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title ?? '-',
                style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xFF040815),
                ),
              ),
              const Text(
                'Show more',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF0957DE),
                ),
              )
            ],
          ),
          const SizedBox(height: 2),
          Text(
            subTitle ?? '-',
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF6F6F6F),
            ),
          ),
        ],
      ),
    );
  }
}
