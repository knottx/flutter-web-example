import 'package:get/get.dart';

import '../modules/a_1/bindings/a_1_binding.dart';
import '../modules/a_1/views/a_1_view.dart';
import '../modules/a_2/bindings/a_2_binding.dart';
import '../modules/a_2/views/a_2_view.dart';
import '../modules/b_1/bindings/b_1_binding.dart';
import '../modules/b_1/views/b_1_view.dart';
import '../modules/b_2/bindings/b_2_binding.dart';
import '../modules/b_2/views/b_2_view.dart';
import '../modules/c_1/bindings/c_1_binding.dart';
import '../modules/c_1/views/c_1_view.dart';
import '../modules/c_2/bindings/c_2_binding.dart';
import '../modules/c_2/views/c_2_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';

// ignore_for_file: always_use_package_imports

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.DASHBOARD;

  static final routes = [
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.A_1,
      page: () => const A1View(),
      binding: A1Binding(),
    ),
    GetPage(
      name: _Paths.A_2,
      page: () => const A2View(),
      binding: A2Binding(),
    ),
    GetPage(
      name: _Paths.B_1,
      page: () => const B1View(),
      binding: B1Binding(),
    ),
    GetPage(
      name: _Paths.B_2,
      page: () => const B2View(),
      binding: B2Binding(),
    ),
    GetPage(
      name: _Paths.C_1,
      page: () => const C1View(),
      binding: C1Binding(),
    ),
    GetPage(
      name: _Paths.C_2,
      page: () => const C2View(),
      binding: C2Binding(),
    ),
  ];
}
