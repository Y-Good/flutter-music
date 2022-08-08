import 'package:flutter/material.dart';
import 'package:g_music/app/config/g_color.dart';
import 'package:get/get.dart';

import '../../../components/g_bottom_navigation_bar.dart';
import '../controllers/root_controller.dart';

class RootView extends GetView<RootController> {
  @override
  Widget build(BuildContext context) {
    final c = controller;
    return Scaffold(
      body: Obx(() => c.pages[c.index.value]),
      bottomNavigationBar: Obx(() {
        return GBottomNavigationBar(
          selectedItemColor: GColor.primary,
          unselectedItemColor: const Color(0xFFB7B7B7),
          items: c.navBarList,
          currentIndex: c.index.value,
          onTap: (v) => c.index.value = v,
        );
      }),
    );
  }
}
