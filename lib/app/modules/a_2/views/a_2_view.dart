import 'package:flutter/material.dart';
import 'package:flutter_web_example/app/global_widgets/normal_body.dart';
import 'package:flutter_web_example/app/modules/a_2/controllers/a_2_controller.dart';
import 'package:get/get.dart';

class A2View extends GetView<A2Controller> {
  const A2View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A2'),
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
