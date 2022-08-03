import 'package:flutter/material.dart';
import 'package:g_music/app/config/g_iconfont.dart';
import 'package:g_music/app/modules/view_collect/collect/views/collect_view.dart';
import 'package:g_music/app/modules/view_event/event/views/event_view.dart';
import 'package:g_music/app/modules/view_home/home/views/home_view.dart';
import 'package:g_music/app/modules/view_profile/profile/views/profile_view.dart';
import 'package:g_music/app/modules/view_search/search/views/search_view.dart';
import 'package:get/get.dart';

class RootController extends GetxController {
  List<Widget> pages = [
    HomeView(),
    EventView(),
    SearchView(),
    CollectView(),
    ProfileView(),
  ];

  List<BottomNavigationBarItem> navBarList = [
    const BottomNavigationBarItem(icon: Icon(GIconFont.iconHome), label: 'a'),
    const BottomNavigationBarItem(
      icon: Icon(GIconFont.iconTicket),
      label: 'b',
      activeIcon: Icon(GIconFont.iconTicketFill),
    ),
    const BottomNavigationBarItem(icon: Icon(GIconFont.iconSearch), label: 'c'),
    const BottomNavigationBarItem(
      icon: Icon(GIconFont.iconArchive1),
      label: 'd',
    ),
    const BottomNavigationBarItem(
      icon: Icon(GIconFont.iconProfile),
      label: 'e',
    ),
  ];

  final index = 0.obs;
}
