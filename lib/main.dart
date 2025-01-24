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
        appBar: AppBar(title: Text("snackbar")),
        body: Center(
          child: OutlinedButton(
              onPressed: () {
                Get.snackbar(
                  "snackbar title",
                  "this will be snackbar message",
                );
              },
              child: Text("snackbar")),
        ),
      ),
    );
  }
}
