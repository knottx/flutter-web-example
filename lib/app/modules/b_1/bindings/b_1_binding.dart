import 'package:flutter_web_example/app/modules/b_1/controllers/b_1_controller.dart';
import 'package:get/get.dart';

class B1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<B1Controller>(
      () => B1Controller(),
    );
  }
}
