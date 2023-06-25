import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/g_float_play.dart';

///
/// @Author: YGood
/// @Description: 你在做咩呀
/// @CreateDate: 2022-08-08 13:47
/// @UpdateDate: 2022-08-08 13:47
class GUtils {
  GUtils._();

  static OverlayEntry? _entry;

  static openFloatPlay() {
    _entry ??= OverlayEntry(
      builder: (_) {
        return GFloatPlay();
      },
    );
    if (_entry != null) {
      Overlay.of(Get.overlayContext!).insert(_entry!);
    }
  }

  static closeFloatPlay() {
    if (_entry != null) {
      _entry?.remove();
    }
  }
}
