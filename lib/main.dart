import 'package:dadwifi/routes/app_router.dart';
import 'package:dadwifi/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no country code
      ],
      // showPerformanceOverlay: true,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      title: 'DadWifi',
      initialRoute: AppRouter.initialRoute,
      getPages: AppRouter.routes,
      onGenerateRoute: ((settings) => AppRouter.onGenerateRoute(settings)),
    );
  }
}
