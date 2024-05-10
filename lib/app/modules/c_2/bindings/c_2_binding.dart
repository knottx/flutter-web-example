import 'package:flutter_web_example/app/modules/c_2/controllers/c_2_controller.dart';
import 'package:get/get.dart';

class C2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<C2Controller>(
      () => C2Controller(),
    );
  }
}
