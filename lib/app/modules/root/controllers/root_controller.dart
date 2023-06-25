import 'package:flutter/material.dart';
import 'package:g_music/app/config/g_iconfont.dart';
import 'package:g_music/app/modules/view_collect/collect/views/collect_view.dart';
import 'package:g_music/app/modules/view_event/event/views/event_view.dart';
import 'package:g_music/app/modules/view_home/home/views/home_view.dart';
import 'package:g_music/app/modules/view_profile/profile/views/profile_view.dart';
import 'package:g_music/app/modules/view_search/search/views/search_view.dart';
import 'package:get/get.dart';

import '../../../components/g_bottom_navigation_bar.dart';
import '../../../utils/g_utils.dart';

class RootController extends GetxController {
  List<Widget> pages = [
    const HomeView(),
    EventView(),
    SearchView(),
    CollectView(),
    ProfileView(),
  ];

  List<GBottomNavigationBarItem> navBarList = [
    GBottomNavigationBarItem(
      const Icon(GIconFont.iconHome),
      const Icon(GIconFont.iconHomeFill),
    ),
    GBottomNavigationBarItem(
      const Icon(GIconFont.iconTicket),
      const Icon(GIconFont.iconTicketFill),
    ),
    GBottomNavigationBarItem(
      const Icon(GIconFont.iconSearch),
      const Icon(GIconFont.iconSearchFill),
    ),
    GBottomNavigationBarItem(
      const Icon(GIconFont.iconArchive1),
      const Icon(GIconFont.iconArchive),
    ),
    GBottomNavigationBarItem(
      const Icon(GIconFont.iconProfile),
      const Icon(GIconFont.iconProfileFill),
    ),
  ];

  final index = 0.obs;


  @override
  void onReady() {
    GUtils.openFloatPlay();
    // TODO: implement onReady
    super.onReady();
  }
}
