import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/play_list_controller.dart';

class PlayListView extends GetView<PlayListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PlayListView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PlayListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
