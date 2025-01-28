import 'package:flutter/material.dart';


class UnknownRoute extends StatefulWidget {
  const UnknownRoute({super.key});

  @override
  State<UnknownRoute> createState() => _NotFoundState();
}

class _NotFoundState extends State<UnknownRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("NOT FOUND PAGE",style: TextStyle(color: Colors.red)),
    );
  }
}
