import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/my_controller.dart';
import 'package:getx/student.dart';

class ReacPage extends StatefulWidget {
  const ReacPage({super.key});

  @override
  State<ReacPage> createState() => _ReacPageState();
}

class _ReacPageState extends State<ReacPage> {
  //create a object for making the entire class observable
  // var student = Student(name: "Ibrahima", age: 25).obs;

  //create a object of mycontrolller class (create the instance of controlller)
    MyController myController =  Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("state manager")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<MyController>(
              id: 'txtCount',
              builder: (controller) {
                return Text(
                  "count with id is ${controller.count}",
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
            GetBuilder<MyController>(
              builder: (controller) {
                return Text(
                  "count is ${controller.count}",
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
            SizedBox(height: 15,),
            OutlinedButton(onPressed: () {
              myController.increment();
            }, child: Text("button"))
          ],
        ),
      ),
    );
  }
}
