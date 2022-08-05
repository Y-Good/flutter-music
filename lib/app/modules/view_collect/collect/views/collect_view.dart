import 'package:flutter/material.dart';
import 'package:g_music/app/components/g_avatar.dart';
import 'package:get/get.dart';

import '../../../../config/g_color.dart';
import '../controllers/collect_controller.dart';

class CollectView extends GetView<CollectController> {
  @override
  Widget build(BuildContext context) {
    final c = controller;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 48,
        backgroundColor: GColor.backgroundColor,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Center(
            child: Text(
              '发现',
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
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 24,
          childAspectRatio: 0.725,
        ),
        itemBuilder: (_, idx) {
          return GestureDetector(
            onTap: c.toPage,
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: GColor.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const GAvatar(radius: 4),
                  const SizedBox(height: 16),
                  Text(
                    'Your playlist',
                    style: TextStyle(fontSize: 14, color: GColor.secondary900),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '20 Artist',
                    style: TextStyle(fontSize: 12, color: GColor.secondary0),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: 12,
      ),
    );
  }
}
