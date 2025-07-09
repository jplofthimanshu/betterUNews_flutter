import 'package:better_u_news/app/constants/app_language.dart';
import 'package:better_u_news/app/routes/app_routes.dart';
import 'package:better_u_news/app/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Language(),
      locale: Locale('en','US'),
      fallbackLocale: Locale('en','US'),
      getPages: AppRoutes.appRoutes(),
      initialRoute: RoutesName.splashScreen,
      debugShowCheckedModeBanner: false,
    );
  }
}
