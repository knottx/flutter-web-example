import 'package:flutter_web_example/app/modules/c_1/controllers/c_1_controller.dart';
import 'package:get/get.dart';

class C1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<C1Controller>(
      () => C1Controller(),
    );
  }
}
