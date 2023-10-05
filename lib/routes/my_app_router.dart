import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/ui/app_development.dart';
import '../screens/ui/cost.dart';
import '../screens/ui/error.dart';
import '../screens/ui/home_view.dart';
import '../screens/ui/success.dart';
import '../screens/ui/website_development.dart';
import '../utilities/constants.dart';

class MyAppRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return HomeView();
        },
        routes: <RouteBase>[
          GoRoute(
            path: errorRoute,
            builder: (BuildContext context, GoRouterState state) {
              Uri uri = Uri.parse(state.uri.toString());
              String? type = uri.queryParameters['type'];
              return ErrorView(
                type: type,
              );
            },
          ),
          GoRoute(
            path: appDevelopmentRoute,
            builder: (BuildContext context, GoRouterState state) {
              return AppDevelopmentView();
            },
          ),
          GoRoute(
            path: websiteDevelopmentRoute,
            builder: (BuildContext context, GoRouterState state) {
              return WebsiteDevelopmentView();
            },
          ),
          GoRoute(
            path: costRoute,
            builder: (BuildContext context, GoRouterState state) {
              return CostView();
            },
          ),
          GoRoute(
            path: successRoute,
            builder: (BuildContext context, GoRouterState state) {
              return SuccessView();
            },
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => ErrorView(
      type: '',
    ),
  );
}
