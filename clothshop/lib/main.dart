import 'package:clothshop/routes/app_page.dart';
import 'package:clothshop/routes/app_route.dart';
import 'package:clothshop/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.mon
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      getPages: AppPage.list,
      initialRoute: AppRoute.dashboard,
    );
  }
}
