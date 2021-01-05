class ClassModel {
  String id;
  String name;

  ClassModel({this.id, this.name});

  ClassModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json[r'$t'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data[r'$t'] = this.name;
    return data;
  }
}