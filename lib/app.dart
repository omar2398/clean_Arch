import 'package:flutter/material.dart';
import 'package:trainnnig/config/Routes/appRoutes.dart';
import 'package:trainnnig/config/Themes/appTheme.dart';
import 'package:trainnnig/core/utils/appStrings.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appStrings.enAppName,
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      initialRoute: Routes.homaRoute,
      onGenerateRoute: appRoutes.generatedRoutes,
    );
  }
}
