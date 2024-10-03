import 'package:dadwifi/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AppRouter {
  static const initialRoute = "/splash_screen";

  static List<GetPage<dynamic>> routes = [
    GetPage(
        name: '/config_screen',
        page: () => ConfigScreen(),
        transitionDuration: const Duration(seconds: 2)),
    GetPage(
      name: '/splash_screen',
      page: () => const SplashScreen(),
    )
  ];

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: ((context) => ConfigScreen()));
  }
}
