import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static Color lightBackgroundColor = Colors.grey.shade200;
  static Color lightPrimaryColor = const Color.fromARGB(255, 26, 77, 29);
  static Color lightSecondaryColor = const Color.fromARGB(255, 33, 34, 33);
  static Color lightAccentColor = const Color.fromARGB(255, 172, 6, 61);
  static Color lightParticlesColor = const Color.fromARGB(255, 69, 71, 69);
  static Color lightTextColor = const Color.fromARGB(255, 26, 77, 29);
  static Color lightPrimaryFixedColor = const Color.fromARGB(255, 172, 6, 61);

  const AppTheme._();

  static final lightTheme = ThemeData(
      bottomAppBarTheme: const BottomAppBarTheme(color: Colors.white),
      brightness: Brightness.light,
      primaryColor: lightPrimaryColor,
      scaffoldBackgroundColor: lightBackgroundColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
      colorScheme: ColorScheme.light(
        primary: lightParticlesColor,
        secondary: lightSecondaryColor,
        primaryFixed: lightPrimaryFixedColor,
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              textStyle: TextStyle(color: lightBackgroundColor))));

  static Brightness get currentstystemBrightness =>
      // ignore: deprecated_member_use
      SchedulerBinding.instance.window.platformBrightness;

  static serStatusBarAndNavigationBarColors(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarColor: lightBackgroundColor,
        systemNavigationBarDividerColor: Colors.transparent));
  }
}
