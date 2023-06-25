import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:g_music/app/components/g_button.dart';
import 'package:g_music/app/config/g_color.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GColor.white,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: DefaultTextStyle(
          style: TextStyle(fontSize: 14, color: GColor.secondary0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 64),
                Text(
                  "登录",
                  style: TextStyle(fontSize: 24, color: GColor.secondary900),
                ),
                const SizedBox(height: 8),
                Text(
                  "请输入您的账号",
                  style: TextStyle(fontSize: 16, color: GColor.secondary0),
                ),
                const SizedBox(height: 56),
                Text(
                  "手机",
                  style: TextStyle(fontSize: 16, color: GColor.secondary300),
                ),
                const SizedBox(height: 12),
                CupertinoTextField(
                  placeholder: 'Enter Your Email',
                  placeholderStyle: TextStyle(color: const Color(0xFFB0B0B0)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      width: 1.5,
                      color: const Color(0xFFF3F3F3),
                    ),
                  ),
                  padding: const EdgeInsets.all(16),
                ),
                const SizedBox(height: 32),
                Text(
                  "密码",
                  style: TextStyle(fontSize: 16, color: GColor.secondary300),
                ),
                const SizedBox(height: 12),
                CupertinoTextField(
                  placeholder: 'Password',
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      width: 1.5,
                      color: const Color(0xFFF3F3F3),
                    ),
                  ),
                  placeholderStyle: TextStyle(color: const Color(0xFFB0B0B0)),
                  padding: const EdgeInsets.all(16),
                  suffix: const Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Icon(
                      CupertinoIcons.eye,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "忘记密码?",
                    style: TextStyle(color: GColor.primary),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GButton(
          label: '登录',
          labelStyle: TextStyle(fontSize: 16, color: GColor.white),
          backgroundColor: GColor.primary,
          borderRadius: 8,
          padding: const EdgeInsets.symmetric(vertical: 14),
          onTap: () => controller.onSubmit(),
        ),
      ),
    );
  }
}
