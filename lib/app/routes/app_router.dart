import 'package:flutter_web_example/app/modules/a_detail/a_detail_page.dart';
import 'package:flutter_web_example/app/modules/a_index/a_index_page.dart';
import 'package:flutter_web_example/app/modules/dashboard/dashboard_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const DashboardPage(),
        routes: [
          GoRoute(
            path: 'a',
            builder: (context, state) => const AIndexPage(),
            routes: [
              GoRoute(
                path: ':id',
                builder: (context, state) {
                  final id = state.pathParameters['id'];
                  return ADetailPage(
                    id: id ?? '',
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
