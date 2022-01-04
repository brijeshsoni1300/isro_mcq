import 'package:get/state_manager.dart';
import 'package:isro_mcq/models/question.dart';

class QuestionController extends GetxController {
  var questionList = <Question>[];

  @override
  void onInit() {
    questionList = generateQuestions();
    for(int i=0; i<120; i++){
      print("${i+1} and ${questionList[i].difficulty} and ${questionList[i].topic}");
    }
    super.onInit();
  }
}

String diff(int num) {
  if (num % 12 == 0 || num % 12 == 1 || num % 12 == 2 || num % 12 == 3 ) {
    return "EASY";
  } else if (num % 12 == 4 || num % 12 == 5 || num % 12 == 6 || num % 12 == 7) {
    return "MID";
  } else {
    return "HARD";
  }
}

String top(int num) {
  if (num % 12 == 0 || num % 12 == 4 || num % 12 == 8) {
    return "TOPIC1";
  } else if (num % 12 == 1 || num % 12 == 5 || num % 12 == 9) {
    return "TOPIC2";
  } else if (num % 12 == 2 || num % 12 == 6 || num % 12 == 10) {
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
        question: "Here is a question no. $i with topic: ${top(i)} and diff : ${diff(i)}",
        topic: top(i));
    return que;
  }).toList();
}
