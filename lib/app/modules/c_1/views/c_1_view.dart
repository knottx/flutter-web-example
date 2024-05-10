import 'package:flutter/material.dart';
import 'package:flutter_web_example/app/global_widgets/normal_body.dart';
import 'package:flutter_web_example/app/modules/c_1/controllers/c_1_controller.dart';
import 'package:get/get.dart';

class C1View extends GetView<C1Controller> {
  const C1View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C1'),
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
