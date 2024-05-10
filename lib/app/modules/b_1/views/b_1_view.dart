import 'package:flutter/material.dart';
import 'package:flutter_web_example/app/global_widgets/normal_body.dart';
import 'package:flutter_web_example/app/modules/b_1/controllers/b_1_controller.dart';
import 'package:get/get.dart';

class B1View extends GetView<B1Controller> {
  const B1View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('B1'),
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
