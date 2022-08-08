import 'package:flutter/material.dart';
import 'package:g_music/app/config/g_iconfont.dart';
import 'package:g_music/app/modules/view_collect/collect/views/collect_view.dart';
import 'package:g_music/app/modules/view_event/event/views/event_view.dart';
import 'package:g_music/app/modules/view_home/home/views/home_view.dart';
import 'package:g_music/app/modules/view_profile/profile/views/profile_view.dart';
import 'package:g_music/app/modules/view_search/search/views/search_view.dart';
import 'package:get/get.dart';

import '../../../components/g_bottom_navigation_bar.dart';

class RootController extends GetxController {
  List<Widget> pages = [
    HomeView(),
    EventView(),
    SearchView(),
    CollectView(),
    ProfileView(),
  ];

  List<GBottomNavigationBarItem> navBarList = [
    GBottomNavigationBarItem(
        Icon(GIconFont.iconHome), Icon(GIconFont.iconHomeFill)),
    GBottomNavigationBarItem(
      Icon(GIconFont.iconTicket),
      Icon(GIconFont.iconTicketFill),
    ),
    GBottomNavigationBarItem(
      Icon(GIconFont.iconSearch),
      Icon(GIconFont.iconSearchFill),
    ),
    GBottomNavigationBarItem(
      Icon(GIconFont.iconArchive1),
      Icon(GIconFont.iconArchive),
    ),
    GBottomNavigationBarItem(
      Icon(GIconFont.iconProfile),
      Icon(GIconFont.iconProfileFill),
    ),
  ];

  final index = 0.obs;
}
