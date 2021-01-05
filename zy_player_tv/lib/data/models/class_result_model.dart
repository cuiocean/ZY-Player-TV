import 'package:zy_player_tv/data/models/class_model.dart';

class ClassResultModel {
  List<ClassModel> classModels;

  ClassResultModel({this.classModels});

  ClassResultModel.fromJson(Map<String, dynamic> json) {
    if (json['ty'] != null) {
      classModels = new List<ClassModel>();
      json['ty'].forEach((v) {
        classModels.add(new ClassModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.classModels != null) {
      data['ty'] = this.classModels.map((v) => v.toJson()).toList();
    }
    return data;
  }
}