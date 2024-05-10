import 'package:flutter/material.dart';
import 'package:flutter_web_example/app/global_widgets/normal_body.dart';
import 'package:flutter_web_example/app/modules/a/controllers/a_controller.dart';
import 'package:get/get.dart';

class AView extends GetView<AController> {
  const AView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A'),
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
