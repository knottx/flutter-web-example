import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_web_example/app/routes/app_routes.dart';
import 'package:go_router/go_router.dart';

void main() {
  log('main');
  GoRouter.optionURLReflectsImperativeAPIs = true;

  runApp(
    MaterialApp.router(
      routerConfig: AppPages.router,
    ),
  );
}
