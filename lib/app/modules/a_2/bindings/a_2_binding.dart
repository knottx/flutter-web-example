import 'package:flutter_web_example/app/modules/a_2/controllers/a_2_controller.dart';
import 'package:get/get.dart';

class A2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<A2Controller>(
      () => A2Controller(),
    );
  }
}
