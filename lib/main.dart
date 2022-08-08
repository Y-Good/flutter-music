import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:g_music/app/config/g_color.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      defaultTransition: Transition.cupertino,
      theme: ThemeData(
        scaffoldBackgroundColor: GColor.backgroundColor,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
    ),
  );
}
