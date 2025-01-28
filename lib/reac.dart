import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/student.dart';

class ReacPage extends StatefulWidget {
  const ReacPage({super.key});

  @override
  State<ReacPage> createState() => _ReacPageState();
}

class _ReacPageState extends State<ReacPage> {
  //create a object for making the entire class observable
  var student = Student(name: "Ibrahima", age: 25).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("state manager")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                  "Name is ${student.value.name} & age is ${student.value.age}",
                  style: TextStyle(fontSize: 25)),
            ),
            SizedBox(
              height: 15,
            ),
            OutlinedButton(
                onPressed: () {
                  student.update((student) {
                    student?.name=student?.name.toString().toUpperCase();
                  });
                },
                child: Text("Upper")),
          ],
        ),
      ),
    );
  }
}
