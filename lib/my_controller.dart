import 'package:get/get.dart';
import 'package:getx/student.dart';

class MyController extends GetxController {
  var student = Student(name:"ibrahima",age: 23).obs;
  void convertToUpperCase() {
    student.update((student) {
      student?.name = student?.name.toString().toUpperCase();
    });
  }
}
