import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventController extends GetxController with GetTickerProviderStateMixin {
  TabController? tabController;
  List<Widget> tabs = [
    Tab(text: 'Live Concert'),
    Tab(text: 'Online Concert'),
    Tab(text: 'Free Concert'),
  ];

  @override
  void onInit() {
    tabController = TabController(length: tabs.length, vsync: this);
    super.onInit();
  }
}
