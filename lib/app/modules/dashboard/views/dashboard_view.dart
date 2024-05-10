import 'package:flutter/material.dart';
import 'package:flutter_web_example/app/modules/a/views/a_view.dart';
import 'package:flutter_web_example/app/modules/b/views/b_view.dart';
import 'package:flutter_web_example/app/modules/c/views/c_view.dart';
import 'package:flutter_web_example/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:get/get.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DashboardView'),
        centerTitle: true,
      ),
      body: Obx(() {
        return IndexedStack(
          index: controller.index.value,
          children: const [
            AView(),
            BView(),
            CView(),
          ],
        );
      }),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _bottomNavigationBar() {
    return Obx(() {
      return BottomNavigationBar(
        currentIndex: controller.index.value,
        onTap: controller.index.call,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'A',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'B',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'C',
          ),
        ],
      );
    });
  }
}
