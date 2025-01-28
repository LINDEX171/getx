import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home.dart';
import 'package:getx/nextscreen.dart';
import 'package:getx/notfound.dart';
import 'package:getx/reac.dart';

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
      initialRoute: "/ReacPage",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(
          name: "/ReacPage",
          page: () => ReacPage(),
        ),
        GetPage(
            name: "/nextScreen",
            page: () => NextScreenPage(),
            transition: Transition.leftToRight),
      ],
       // unknownRoute: GetPage(name: "/notfound", page: () => UnknownRoute(),),
    );
  }
}
