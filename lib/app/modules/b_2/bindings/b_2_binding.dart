import 'package:flutter_web_example/app/modules/b_2/controllers/b_2_controller.dart';
import 'package:get/get.dart';

class B2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<B2Controller>(
      () => B2Controller(),
    );
  }
}
