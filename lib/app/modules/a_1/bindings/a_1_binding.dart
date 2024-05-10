import 'package:flutter_web_example/app/modules/a_1/controllers/a_1_controller.dart';
import 'package:get/get.dart';

class A1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<A1Controller>(
      () => A1Controller(),
    );
  }
}
