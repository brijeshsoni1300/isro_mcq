import 'package:get/state_manager.dart';
import 'package:isro_mcq/models/question.dart';

class QuestionController extends GetxController {
  var questionList = <Question>[];

  @override
  void onInit() {
    questionList = generateQuestions();
    super.onInit();
  }
}

String diff(int num) {
  if (num % 3 == 0) {
    return "EASY";
  } else if (num % 3 == 1) {
    return "MID";
  } else {
    return "HARD";
  }
}

String top(int num) {
  if (num % 3 == 0) {
    return "TOPIC1";
  } else if (num % 3 == 1) {
    return "TOPIC2";
  } else if (num % 4 == 2) {
    return "TOPIC3";
  } else {
    return "TOPIC4";
  }
}

List<Question> generateQuestions() {
  List<int> a = List<int>.generate(120, (int index) => index);

  return a.map((i) {
    Question que = Question(
        difficulty: diff(i),
        option1: true,
        option2: false,
        option3: false,
        option4: false,
        question: "Here is a question no. $i haha",
        topic: top(i));
    return que;
  }).toList();
}
