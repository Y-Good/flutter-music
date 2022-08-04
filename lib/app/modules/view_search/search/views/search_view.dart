import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:g_music/app/config/g_iconfont.dart';
import 'package:get/get.dart';

import '../../../../components/g_avatar.dart';
import '../../../../config/g_color.dart';
import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GColor.backgroundColor,
        elevation: 0,
        toolbarHeight: 48,
        leadingWidth: 80,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Center(
            child: Text(
              'Search',
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
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 24,
              bottom: 16,
              right: 16,
              left: 16,
            ),
            child: CupertinoTextField(
              decoration: BoxDecoration(
                color: GColor.white,
                borderRadius: BorderRadius.circular(8),
              ),
              prefix: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Icon(
                  GIconFont.iconSearch,
                  color: Colors.grey,
                ),
              ),
              placeholder: 'Search artist, music or events',
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, idx) {
              return _buildCard();
            },
            itemCount: 6,
          ),
        ],
      )),
    );
  }

  Widget _buildCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Artist',
                  style: TextStyle(fontSize: 18, color: GColor.secondary900),
                ),
                Text('show more',
                    style: TextStyle(fontSize: 12, color: GColor.primary)),
              ],
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: List.generate(
                  4,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        GAvatar(size: 120, radius: 4),
                        SizedBox(height: 12),
                        Text(
                          'Blinding Lights',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'The Weeknd',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF6F6F6F),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
