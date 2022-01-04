import 'package:get/state_manager.dart';

class QuizController extends GetxController {
  int marks = 0;
  int total = 0;

  @override
  void onInit() {
    total = 0 ;
    marks = 0 ;
    super.onInit();
  }

  void updateMarks(bool? istrue) {
    if (istrue!) {
      marks++;
    } else {
      // marks--;
    }
    total++;
  }
}
