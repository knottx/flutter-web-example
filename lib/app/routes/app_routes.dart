import 'package:flutter_web_example/app/modules/a_detail/a_detail_view.dart';
import 'package:flutter_web_example/app/modules/a_index/a_index_view.dart';
import 'package:flutter_web_example/app/modules/b_detail/b_detail_view.dart';
import 'package:flutter_web_example/app/modules/b_index/b_index_view.dart';
import 'package:flutter_web_example/app/modules/dashboard/dashboard_view.dart';
import 'package:go_router/go_router.dart';

abstract class Paths {
  static const dashboard = '/dashboard';

  static const aIndex = '$dashboard/a-index';
  static String aIndexDetail({required String id}) => '$aIndex/$id';

  static const bIndex = '$dashboard/b-index';
  static String bIndexDetail({required String id}) => '$bIndex/$id';
}

class AppPages {
  static final router = GoRouter(
    initialLocation: Paths.dashboard,
    routes: [
      GoRoute(
        path: '/dashboard',
        builder: (context, state) => const DashboardView(),
        routes: [
          GoRoute(
            path: 'a-index',
            builder: (context, state) => const AIndexView(),
            routes: [
              GoRoute(
                path: ':id',
                builder: (context, state) {
                  final id = state.pathParameters['id'];
                  return ADetailView(
                    id: id,
                  );
                },
              ),
            ],
          ),
          GoRoute(
            path: 'b-index',
            builder: (context, state) => const BIndexView(),
            routes: [
              GoRoute(
                path: ':id',
                builder: (context, state) {
                  final id = state.pathParameters['id'];
                  return BDetailView(
                    id: id,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
