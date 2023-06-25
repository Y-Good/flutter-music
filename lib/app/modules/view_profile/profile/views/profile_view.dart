import 'package:flutter/material.dart';
import 'package:g_music/app/components/g_avatar.dart';
import 'package:g_music/app/components/page/g_event_card.dart';
import 'package:g_music/app/config/g_color.dart';
import 'package:g_music/app/config/g_iconfont.dart';
import 'package:g_music/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              SizedBox(
                height: 64,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 2),
                        child: GAvatar(size: 60, radius: 30),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              'John Doe',
                              style: TextStyle(fontSize: 24),
                            ),
                            Text(
                              'johndoe@gmail.com',
                              style: TextStyle(
                                fontSize: 14,
                                color: GColor.secondary0,
                              ),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () => Get.toNamed(Routes.SETTINGS),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: GColor.white,
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(
                              width: 1,
                              color: GColor.secondary0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              GIconFont.iconSettingLinear,
                              size: 16,
                              color: GColor.secondary0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 28,
                  bottom: 32,
                  left: 16,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildColumnText('206', 'Follower'),
                    _buildColumnText('128', 'Following'),
                    _buildColumnText('23', 'Playlist'),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Popular Playlist',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  width: Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildPlayListCard(),
                      _buildPlayListCard(),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 36),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  'Upcoming Event',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ListView.builder(
                padding: EdgeInsets.zero,
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
      ),
    );
  }

  Widget _buildColumnText(String count, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Text(
            count,
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildPlayListCard() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: GColor.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: GColor.primary.withOpacity(0.03),
            blurRadius: 60,
            spreadRadius: 0,
            offset: const Offset(0, 6),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          GAvatar(
            size: 130,
            radius: 4,
            url:
                'https://img1.baidu.com/it/u=4016017873,3810764064&fm=253&fmt=auto&app=138&f=JPEG',
          ),
          SizedBox(height: 16),
          Text('Your Artist', style: TextStyle(fontSize: 14)),
          SizedBox(height: 8),
          Text(
            '3 Followers',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
