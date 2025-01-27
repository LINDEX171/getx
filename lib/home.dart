import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home page")),
      body: Center(
        child: Row(
          children: [
            IconButton(onPressed: () {
            Get.back();
            }, icon: Icon(Icons.skip_previous)),

            IconButton(onPressed: () {

            }, icon: Icon(Icons.next_plan_rounded))
          ],
        ),
      ),
    );
  }
}
