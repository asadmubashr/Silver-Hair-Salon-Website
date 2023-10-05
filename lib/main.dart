import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:url_strategy/url_strategy.dart';
import 'package:website_base/routes/my_app_router.dart';

void main() {
  if (kIsWeb) {
    setPathUrlStrategy();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: MyAppRouter.router.routerDelegate,
      routeInformationParser: MyAppRouter.router.routeInformationParser,
      routeInformationProvider: MyAppRouter.router.routeInformationProvider,
      debugShowCheckedModeBanner: false,
      title: 'Silver Hair Salon',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
