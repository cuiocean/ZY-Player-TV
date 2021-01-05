import 'package:zy_player_tv/data/models/video_model.dart';

class VideoResultModel {
  List<Video> videoList;

  VideoResultModel({this.videoList});

  VideoResultModel.fromJson(Map<String, dynamic> json) {
    if (json['video'] != null) {
      videoList = new List<Video>();
      json['video'].forEach((v) { videoList.add(new Video.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.videoList != null) {
      data['video'] = this.videoList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
