import 'package:flutter/material.dart';
import 'package:g_music/app/config/g_color.dart';
import 'package:get/get.dart';

import '../controllers/view_splash_controller.dart';

class ViewSplashView extends GetView<ViewSplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GColor.primary,
      body: Stack(
        children: [
          Positioned(
            child: circle(
              Get.width,
              GColor.white.withOpacity(0.1),
            ),
          ),
          Positioned(
            child: circle(
              Get.width * 6 / 8,
              GColor.white.withOpacity(0.1),
            ),
          ),
          Positioned(
            child: circle(
              Get.width * 4 / 8,
              GColor.white.withOpacity(0.1),
            ),
          ),
          Positioned(
            child: Center(
              child: Text(
                'Disc.',
                style: TextStyle(fontSize: 36, color: GColor.white),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget circle(double size, Color color) {
    return Center(
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(size / 2),
        ),
      ),
    );
  }
}
