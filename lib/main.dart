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
            onPressed: () async {
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
              // Get.offAll(HomePage());
              //Go to the next screen with some data
              // Get.to(HomePage(),arguments: "data from main");

              //Go to the next screen and receive data sent from home screen
             var data =await Get.to(HomePage());
             print("the received data is ${data}");
            },
            child: Text("GO to home,"),
          ),
        ),
      ),
    );
  }
}
