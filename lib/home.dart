import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/nextscreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home page")),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              IconButton(onPressed: () {
              Get.back(result: "this is from home screen");
              }, icon: Icon(Icons.skip_previous)),

              IconButton(onPressed: () {

              }, icon: Icon(Icons.next_plan_rounded))
            ],
          ),
          SizedBox(height: 15,),
          // Text("${Get.arguments}",style: TextStyle(color: Colors.red)),
          OutlinedButton(onPressed: () {
            Get.toNamed("/nextScreen");
          }, child: Text("GO TO Home"))
        ],
      ),
    );
  }
}
