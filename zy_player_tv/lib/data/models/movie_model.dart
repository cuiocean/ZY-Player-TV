import 'package:zy_player_tv/data/models/movie_site_model.dart';
import 'package:zy_player_tv/data/models/movie_detail_model.dart';

class MovieModel {
  String key;
  int ids;
  Site site;
  String name;
  Detail detail;
  String rate;
  int id;

  MovieModel(
      {this.key,
      this.ids,
      this.site,
      this.name,
      this.detail,
      this.rate,
      this.id});

  MovieModel.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    ids = json['ids'];
    site = json['site'] != null ? new Site.fromJson(json['site']) : null;
    name = json['name'];
    detail =
        json['detail'] != null ? new Detail.fromJson(json['detail']) : null;
    rate = json['rate'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['ids'] = this.ids;
    if (this.site != null) {
      data['site'] = this.site.toJson();
    }
    data['name'] = this.name;
    if (this.detail != null) {
      data['detail'] = this.detail.toJson();
    }
    data['rate'] = this.rate;
    data['id'] = this.id;
    return data;
  }
}

