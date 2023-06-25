import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:g_music/app/components/g_avatar.dart';
import 'package:g_music/app/config/g_iconfont.dart';
import 'package:g_music/app/utils/g_utils.dart';
import 'package:get/get.dart';

import '../routes/app_pages.dart';

class GFloatPlay extends StatefulWidget {
  const GFloatPlay({Key? key}) : super(key: key);

  @override
  State<GFloatPlay> createState() => _GFloatPlayState();
}

class _GFloatPlayState extends State<GFloatPlay> {
  final GlobalKey _key = GlobalKey();

  Offset _offset = const Offset(16, kToolbarHeight);

  bool isExpand = true;

  void onDrag(DragUpdateDetails details) {
    RenderBox? box = _key.currentContext?.findRenderObject() as RenderBox?;

    // 起点在右下角
    _offset -= details.delta;
    if (_offset.dx >= 0 &&
        _offset.dx <= (Get.width - box!.size.width) &&
        _offset.dy >= kToolbarHeight &&
        _offset.dy <= (Get.height - box.size.height)) {
      setState(() {});
    }

    // print(_offset);
    // if (_offset.dx <= 0 && _offset.dx >= -Get.width) {
    //   print('object');
    // }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 300),
      bottom: _offset.dy,
      right: _offset.dx,
      child: GestureDetector(
        key: _key,
        // onPanUpdate: onDrag,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Material(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 14, sigmaY: 14),
              child: Container(
                padding: const EdgeInsets.all(16).copyWith(left: 6),
                decoration: BoxDecoration(
                  color: const Color(0xB38A8A8A),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.14),
                      offset: const Offset(-2, 5),
                      blurRadius: 34,
                    ),
                  ],
                ),
                child: IconTheme(
                  data: IconThemeData(size: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _offset = Offset(isExpand ? -156 : 16, _offset.dy);
                          isExpand = !isExpand;
                          setState(() {});
                        },
                        child: ColoredBox(
                          color: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: Icon(
                              CupertinoIcons.chevron_right,
                              color: Colors.white54,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 14),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.PLAY);
                            },
                            child: Row(
                              children: [
                                GAvatar(size: 32, radius: 4),
                                const SizedBox(width: 8),
                                Text(
                                  '月亮之上',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                GIconFont.iconPrevious,
                                color: Colors.white.withOpacity(.8),
                              ),
                              const SizedBox(width: 34),
                              // Icon(CupertinoIcons.pause_solid),
                              const Icon(
                                CupertinoIcons.play_arrow_solid,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 34),
                              Icon(
                                GIconFont.iconNext,
                                color: Colors.white.withOpacity(.8),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
