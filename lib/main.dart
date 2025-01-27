import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home.dart';
import 'package:getx/nextscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Navigation ',
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(
          name: "/",
          page: () => HomePage(),
        ),
        GetPage(
            name: "/nextScreen",
            page: () => NextScreenPage(),
            transition: Transition.leftToRight)
      ],
    );
  }
}
