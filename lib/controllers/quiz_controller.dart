import 'package:get/state_manager.dart';

class QuizController extends GetxController {
  RxInt marks = 0.obs;
  RxInt total = 0.obs;

  @override
  void onInit() {
    total = 0 as RxInt;
    marks = 0 as RxInt;
    super.onInit();
  }

  void updateMarks(bool istrue) {
    if (istrue) {
      marks++;
    } else {
      marks--;
    }
    total++;
  }
}
