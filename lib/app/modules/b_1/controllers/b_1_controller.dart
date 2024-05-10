import 'package:flutter_web_example/app/routes/app_pages.dart';
import 'package:get/get.dart';

class B1Controller extends GetxController {
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void onTapNext() {
    Get.toNamed(Routes.B_2);
  }
}
