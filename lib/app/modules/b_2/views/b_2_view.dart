import 'package:flutter/material.dart';
import 'package:flutter_web_example/app/global_widgets/normal_body.dart';
import 'package:flutter_web_example/app/modules/b_2/controllers/b_2_controller.dart';
import 'package:get/get.dart';

class B2View extends GetView<B2Controller> {
  const B2View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('B2'),
        centerTitle: true,
      ),
      body: NormalBody(
        count: controller.count,
        increment: controller.increment,
        onTapNext: controller.onTapNext,
      ),
    );
  }
}
