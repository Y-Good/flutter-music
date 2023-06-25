import 'package:flutter/material.dart';
import 'package:g_music/app/components/components.dart';
import 'package:g_music/app/models/models.dart';
import 'package:g_music/app/modules/view_home/home/widgets/play_card.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GAppBar(leadingText: '发现'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PlayCard(),
            GScrollRow(
              title: '每日推荐',
              subTitle: 'Curated by our team',
              datas: controller.personList,
            ),
            const SizedBox(height: 16),
            const GSectionTitle(
              title: '音乐活动',
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
}
