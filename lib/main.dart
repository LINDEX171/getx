import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home.dart';

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
      home: Scaffold(
        appBar: AppBar(title: Text("Navigation")),
        body: Center(
          child: OutlinedButton(
            onPressed: () {
              // Get.to(
              //   HomePage(),
              //    // fullscreenDialog: true,
              //
              //   //to provide animation
              //   transition: Transition.zoom,
              //     //duration for transition animation
              //      duration: Duration(milliseconds: 4000),
              //   //Curve Animation
              //   // curve: Curves.bounceInOut
              // );

              // Go to home screen but no option to return to previous screen
              // Get.off(HomePage());

              //Go to home screen and cancel all previous
              //screen route
              Get.offAll(HomePage());

            },
            child: Text("GO to home"),
          ),
        ),
      ),
    );
  }
}
