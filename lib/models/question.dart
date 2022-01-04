class Question {
  String? question;
  bool? option1;
  bool? option2;
  bool? option3;
  bool? option4;
  String? topic;
  String? difficulty;

  Question(
      {this.question,
      this.option1,
      this.option2,
      this.option3,
      this.option4,
      this.topic,
      this.difficulty});

  Question.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    option1 = json['option1'];
    option2 = json['option2'];
    option3 = json['option3'];
    option4 = json['option4'];
    topic = json['topic'];
    difficulty = json['difficulty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['question'] = this.question;
    data['option1'] = this.option1;
    data['option2'] = this.option2;
    data['option3'] = this.option3;
    data['option4'] = this.option4;
    data['topic'] = this.topic;
    data['difficulty'] = this.difficulty;
    return data;
  }
}
