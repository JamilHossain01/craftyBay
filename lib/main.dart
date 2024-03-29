import 'package:e_shop1/controller_binding.dart';
import 'package:e_shop1/presentation/ui/screens/auth/auth1/splash_screen.dart';
import 'package:e_shop1/presentation/ui/utility/app_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

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
      title: 'Flutter Demo',
      theme: AppThemeData.lightThemeData,
      home: SplashScreen(),
      initialBinding: ControllerBinder(),
    );
  }
}
