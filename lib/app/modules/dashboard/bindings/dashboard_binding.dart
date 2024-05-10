import 'package:flutter_web_example/app/modules/a/controllers/a_controller.dart';
import 'package:flutter_web_example/app/modules/b/controllers/b_controller.dart';
import 'package:flutter_web_example/app/modules/c/controllers/c_controller.dart';
import 'package:flutter_web_example/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
    Get.lazyPut<AController>(
      () => AController(),
    );
    Get.lazyPut<BController>(
      () => BController(),
    );
    Get.lazyPut<CController>(
      () => CController(),
    );
  }
}
