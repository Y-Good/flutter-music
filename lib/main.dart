import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        splashFactory: NoSplash.splashFactory,
        highlightColor: Colors.transparent,
      ),
    ),
  );
  SystemUiOverlayStyle uiStyle = const SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0x00000000),
    systemNavigationBarDividerColor: null,
    statusBarColor: Color(0x00000000),
    systemNavigationBarIconBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.dark,
  );

  SystemChrome.setSystemUIOverlayStyle(uiStyle);
}
