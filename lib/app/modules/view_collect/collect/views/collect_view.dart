import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/collect_controller.dart';

class CollectView extends GetView<CollectController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CollectView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CollectView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
