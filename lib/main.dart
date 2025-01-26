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
                Get.bottomSheet(Container(
                  ///Le widget Wrap place les enfants sur une
                  ///ligne (ou une colonne) et, si l'espace
                  ///manque, il passe automatiquement à une
                  ///nouvelle ligne (ou colonne).
                  child: Wrap(
                    children: [
                      ListTile(
                        leading: Icon(Icons.wb_sunny_outlined),
                        title: Text("Light theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.wb_sunny),
                        title: Text("Dark theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                ));
              },
              child: Text("Bottom sheet")),
        ),
      ),
    );
  }
}
