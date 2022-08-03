import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:g_music/app/components/g_avatar.dart';
import 'package:g_music/app/config/g_color.dart';
import 'package:g_music/app/config/g_iconfont.dart';
import 'package:get/get.dart';

import '../controllers/event_detail_controller.dart';

class EventDetailView extends GetView<EventDetailController> {
  EventDetailView({Key? key}) : super(key: key);
  final c = Get.find<EventDetailController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 48,
        leading: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _buildCircularBg(onTap: () => Get.back()),
        ),
        title: const Text(
          'Event Detail',
          style: TextStyle(color: Colors.black87, fontSize: 16),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: GColor.backgroundColor,
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: _buildCircularBg(icon: GIconFont.iconArchive),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      'https://img0.baidu.com/it/u=4240146555,3429934729&fm=253&fmt=auto&app=138&f=JPEG?w=375&h=500',
                      width: Get.width,
                      height: Get.width * 7 / 5,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 32,
                  right: 32,
                  bottom: 32,
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 14, sigmaY: 14),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Ultraviolence',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Lana Del Rey',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF686868),
                                    ),
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.link,
                                size: 24,
                                color: Color(0xFF686868),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 8),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: const Color(0xFF4C84E7),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          width: 1,
                          color: GColor.white.withOpacity(0.5),
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          '13',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFFE0E9F4),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'May',
                          style: TextStyle(
                            fontSize: 12,
                            color: const Color(0xFFE0E9F4).withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'St. Patrick Stadion',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFFE0E9F4),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Los Angeles, California',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFE0E9F4).withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: GColor.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Icon(
                      GIconFont.iconGps,
                      size: 24,
                      color: GColor.primary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'About Concert',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'A concert is a live music performance in front of an audience. The performance may be by a single musician, sometimes then called a recital, or by a musical ensemble.',
                  softWrap: true,
                  style: TextStyle(fontSize: 14, color: GColor.secondary0),
                ),
              ),
            ),
            const SizedBox(height: 32),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Performer',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              constraints: const BoxConstraints(minHeight: 48, maxHeight: 56),
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, idx) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Chip(
                    backgroundColor: GColor.white,
                    avatar: const GAvatar(size: 32, radius: 16),
                    label: const Text('Lana Del Rey'),
                    labelStyle: const TextStyle(color: Color(0xFF96959C)),
                    labelPadding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 6,
                    ),
                  ),
                ),
                itemCount: 5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 32,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildChooseCard(),
                  _buildChooseCard(),
                  _buildChooseCard()
                ],
              ),
            ),
            Obx(() {
              return Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
                child: SizedBox(
                  width: Get.width,
                  child: TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        GColor.primary.withOpacity(c.isChoose.value ? 1 : 0.5),
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'CheckOut',
                        style: TextStyle(fontSize: 16, color: GColor.white),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildCircularBg({IconData? icon, VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: GColor.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(
          icon ?? Icons.arrow_back,
          color: Colors.black87,
          size: 16,
        ),
      ),
    );
  }

  Widget _buildChooseCard() {
    return Obx(() {
      return GestureDetector(
        onTap: () => c.isChoose.value = !c.isChoose.value,
        child: Container(
          decoration: BoxDecoration(
            color: c.isChoose.value ? GColor.primary : GColor.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              width: 1.5,
              color:
                  c.isChoose.value ? GColor.primary : const Color(0xFFF3F3F3),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 12,
            ),
            child: Column(
              children: [
                Text(
                  'VVIP',
                  style: TextStyle(
                    fontSize: 12,
                    color: c.isChoose.value
                        ? Colors.white.withOpacity(0.7)
                        : GColor.secondary0,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  '150 USD',
                  style: TextStyle(
                    fontSize: 18,
                    color: c.isChoose.value ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
