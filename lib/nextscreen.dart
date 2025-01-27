import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreenPage extends StatefulWidget {
  const NextScreenPage({super.key});

  @override
  State<NextScreenPage> createState() => _NextScreenPageState();
}

class _NextScreenPageState extends State<NextScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text("next screen page")),
      body: Center(
        child: Text("this is the channel ${Get.parameters['channel']} and this is the channel ${Get.parameters['content']}"),
      ),
    );
  }
}
