class CustomerSatellite {
  String? id;
  String? country;
  String? launchDate;
  String? mass;
  String? launcher;

  CustomerSatellite(
      {this.id, this.country, this.launchDate, this.mass, this.launcher});

  CustomerSatellite.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    country = json['country'];
    launchDate = json['launch_date'];
    mass = json['mass'];
    launcher = json['launcher'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['country'] = this.country;
    data['launch_date'] = this.launchDate;
    data['mass'] = this.mass;
    data['launcher'] = this.launcher;
    return data;
  }
}
