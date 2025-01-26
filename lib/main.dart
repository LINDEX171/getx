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
      home: Scaffold(
        appBar: AppBar(title: Text("Dialog")),
        body: Center(
          child: OutlinedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "dzd",
                  middleText: "thisis a middletext",
                  middleTextStyle: TextStyle(color: Colors.grey),
                  backgroundColor: Colors.blue,
                  radius: 80,
                  //customize the middle text
                  content: Row(
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(width: 16,),
                      Expanded(child: Text("data loaing"))
                    ],
                  ),
                  textCancel: "cancel" ,
                  cancelTextColor: Colors.white,
                  textConfirm: "confirm",
                  confirmTextColor: Colors.white,
                  //we can customize all

                );
              },
              child: Text("dialog")),
        ),
      ),
    );
  }
}
