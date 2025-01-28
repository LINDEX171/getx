import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/student.dart';

class ReacPage extends StatefulWidget {

  const ReacPage({super.key});

  @override
  State<ReacPage> createState() => _ReacPageState();
}

class _ReacPageState extends State<ReacPage> {

  //create a object
  var student = Student();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("state manager")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() =>Text("Name is ${student.name.value}",style: TextStyle(fontSize: 25)), ),
            SizedBox(height: 15,),
            OutlinedButton(onPressed: () {
              student.name.value = student.name.value.toUpperCase();
            }, child: Text("increment")),

          ],
        ),
      ),
    );
  }
}
