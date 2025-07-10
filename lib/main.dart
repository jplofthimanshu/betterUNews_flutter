import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:better_u_news/app/constants/app_language.dart';
import 'package:better_u_news/app/routes/app_routes.dart';
import 'package:better_u_news/app/routes/route_names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Better U News',
      debugShowCheckedModeBanner: false,

      // Localization settings
      translations: Language(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),

      // Routing configuration
      initialRoute: RoutesName.splashScreen,
      getPages: AppRoutes.appRoutes(),

      // Theme (optional improvement point: customize later)
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
    );
  }
}
