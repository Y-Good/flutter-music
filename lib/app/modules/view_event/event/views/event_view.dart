import 'package:flutter/material.dart';
import 'package:g_music/app/components/g_avatar.dart';
import 'package:g_music/app/components/page/g_event_card.dart';
import 'package:g_music/app/config/g_color.dart';
import 'package:get/get.dart';

import '../controllers/event_controller.dart';

class EventView extends GetView<EventController> {
  @override
  Widget build(BuildContext context) {
    final c = controller;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GColor.backgroundColor,
        elevation: 0,
        leadingWidth: 65,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Center(
            child: Text(
              'Event',
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
        bottom: TabBar(
          controller: c.tabController,
          tabs: c.tabs,
          isScrollable: true,
          labelColor: GColor.primary,
          labelStyle: const TextStyle(fontSize: 16),
          unselectedLabelColor: GColor.primary0,
          indicatorColor: GColor.primary,
          indicatorWeight: 6,
          indicatorSize: TabBarIndicatorSize.label,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
                6,
                (index) => const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: GEventCard(),
                    ))
          ],
        ),
      ),
    );
  }
}
