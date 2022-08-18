import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/g_color.dart';

///
/// @Author: YGood
/// @Description: 你在做咩呀
/// @CreateDate: 2022-08-18 17:07
/// @UpdateDate: 2022-08-18 17:07
class GCircularBgButton extends StatelessWidget {
  const GCircularBgButton({
    Key? key,
    this.onTap,
    this.icon,
    this.backgroundColor,
    this.iconColor,
    this.border = false,
  }) : super(key: key);

  final VoidCallback? onTap;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? iconColor;
  final bool border;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => Get.back(),
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: backgroundColor ?? GColor.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              width: border ? 1.5 : 0, color: const Color(0xFFF3F3F3)),
        ),
        child: Icon(
          icon ?? Icons.arrow_back,
          color: iconColor ?? Colors.white,
          size: 16,
        ),
      ),
    );
  }
}
