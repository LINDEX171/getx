import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0;
  void increment()  {
    count++;
    update(['txtCount']); //will updatre the count variable on Ui wich uses it
  }

  // void cleanUpTask(){
  //   print("Clean up task");
  // }
  //
  // @override
  // void onInit(){
  //   print("Init called");
  //   super.onInit();
  // }
  //
  // @override
  // void onClose(){
  //   super.onClose();
  // }
}




