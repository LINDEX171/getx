import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReacPage extends StatefulWidget {

  const ReacPage({super.key});

  @override
  State<ReacPage> createState() => _ReacPageState();
}

class _ReacPageState extends State<ReacPage> {
  //to make variable reactive
  var count = 0.obs;

  //create a methode
  void increment(){
    count++;
  }
  void decrement(){
    count--;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("state manager")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() =>Text("Count is ${count}",style: TextStyle(fontSize: 25)), ),
            SizedBox(height: 15,),
            OutlinedButton(onPressed: () {
return increment();
            }, child: Text("increment")),
            OutlinedButton(onPressed: () {
              return decrement();
            }, child: Text("decrement"))
          ],
        ),
      ),
    );
  }
}
