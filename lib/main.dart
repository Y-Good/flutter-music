import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:g_music/app/config/g_color.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
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
