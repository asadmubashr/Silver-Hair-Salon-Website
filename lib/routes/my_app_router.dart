import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:website_base/screens/ui/menu/about_us_view.dart';
import 'package:website_base/screens/ui/menu/gallery_view.dart';

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
            path: aboutUsRoute,
            builder: (BuildContext context, GoRouterState state) {
              return AboutUsView();
            },
          ),
          GoRoute(
            path: galleryRoute,
            builder: (BuildContext context, GoRouterState state) {
              return GalleryView();
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
