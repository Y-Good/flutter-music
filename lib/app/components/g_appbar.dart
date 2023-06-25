import 'package:flutter/material.dart';
import 'package:g_music/app/routes/app_pages.dart';
import 'package:g_music/app/utils/g_storage.dart';
import 'package:get/get.dart';

import '../config/g_color.dart';
import '../models/user_model.dart';
import 'g_avatar.dart';

///
/// @Author: YGood
/// @Description: 你在做咩呀
/// @CreateDate: 2022-08-08 15:02
/// @UpdateDate: 2022-08-08 15:02

class GAppBar extends AppBar {
  GAppBar({
    Key? key,
    Widget? leading,
    String? leadingText,
    List<Widget>? actions,
    Color? backgroundColor,
    double? toolbarHeight,
    PreferredSizeWidget? bottom,
    double? leadingWidth,
  }) : super(
          key: key,
          leadingWidth: leadingWidth ?? 65,
          leading: leading ??
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Center(
                  child: Text(
                    leadingText ?? '-',
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
          actions: actions ??
              [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.LOGIN);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Center(
                      child: GAvatar(
                        url: User.fromJson(
                          GStorage.read<Map<String, dynamic>>('user') ?? {},
                        ).avatarUrl,
                        size: 40,
                        radius: 20,
                      ),
                    ),
                  ),
                )
              ],
          backgroundColor: backgroundColor ?? GColor.backgroundColor,
          toolbarHeight: toolbarHeight ?? 56,
          elevation: 0,
          bottom: bottom,
        );
}
