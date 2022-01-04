class Center {
  int? id;
  String? name;
  String? place;
  String? state;

  Center({this.id, this.name, this.place, this.state});

  Center.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    place = json['place'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['place'] = this.place;
    data['state'] = this.state;
    return data;
  }
}
