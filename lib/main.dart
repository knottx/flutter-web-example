import 'package:flutter/material.dart';
import 'package:flutter_web_example/app/routes/app_pages.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Application',
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
