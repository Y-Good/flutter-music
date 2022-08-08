import 'package:flutter/material.dart';
import 'package:g_music/app/components/g_appbar.dart';
import 'package:g_music/app/components/g_section_title.dart';
import 'package:g_music/app/components/page/g_event_card.dart';
import 'package:g_music/app/modules/view_home/home/widgets/play_card.dart';
import 'package:get/get.dart';

import '../../../../components/page/g_scroll_row.dart';
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
            const PlayCard(),
            const GScrollRow(
              title: 'Our recommendation',
              subTitle: 'Curated by our team',
            ),
            const SizedBox(height: 16),
            const GSectionTitle(
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
}
