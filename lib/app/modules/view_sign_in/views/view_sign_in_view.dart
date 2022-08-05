import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/view_sign_in_controller.dart';

class ViewSignInView extends GetView<ViewSignInController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ViewSignInView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ViewSignInView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
