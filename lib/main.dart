import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:korean_app/routes/app_pages.dart';

import 'gen/colors.gen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: ColorValue.primary,
        scaffoldBackgroundColor: ColorValue.white,
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
