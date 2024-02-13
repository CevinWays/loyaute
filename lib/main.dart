import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyaute/app/app_pages.dart';
import 'package:loyaute/app/i18n/translaction_services.dart';
import 'package:loyaute/app/styles/styles.dart';
import 'package:loyaute/features/splash/presentation/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: kDebugMode,
      title: 'Loyaute',
      initialRoute: initialPageRoute,
      theme: Styles.lightTheme(),
      themeMode: ThemeMode.light,
      home: const SplashPage(),
      getPages: pageRoutes,
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
    );
  }
}
