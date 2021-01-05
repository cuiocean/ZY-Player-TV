import 'package:zy_player_tv/data/models/class_model.dart';
import 'package:zy_player_tv/data/models/class_result_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';
import 'package:zy_player_tv/data/models/page_result_model.dart';
import 'package:zy_player_tv/data/models/video_model.dart';
import 'package:zy_player_tv/data/models/video_result_model.dart';

abstract class MovieRemoteDataSource {
  Future<List<ClassModel>> getClassList(String url);
  Future<PageResultModel> getPageInfo(String url, int tid);
  Future<List<Video>> getVideoList(String url, int tid, int pg);
  Future<Video> getVideoDetail(String url, int ids);
}

class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  Xml2Json _xml2json;
  MovieRemoteDataSourceImpl() {
    _xml2json = new Xml2Json();
  }
  @override
  Future<List<ClassModel>> getClassList(String url) async {
    var response = await http.get(url);
    _xml2json.parse(response.body);
    var parsedData = _xml2json.toGData();
    return ClassResultModel.fromJson(jsonDecode(parsedData)['rss']['class'])
        .classModels;
  }

  @override
  Future<PageResultModel> getPageInfo(String url, int tid) async {
    var internalUrl = url + '?ac=videolist&t=' + tid.toString();
    var response = await http.get(internalUrl);
    _xml2json.parse(response.body);
    var parsedData = _xml2json.toGData();
    return PageResultModel.fromJson(jsonDecode(parsedData)['rss']['list']);
  }

  @override
  Future<List<Video>> getVideoList(String url, int tid, int pg) async{
    var internalUrl = url + '?ac=videolist&t=' + tid.toString() + '&pg=' + pg.toString();
    var response = await http.get(internalUrl);
    _xml2json.parse(response.body);
    var parsedData = _xml2json.toGData();
    return VideoResultModel.fromJson(jsonDecode(parsedData)['rss']['list']).videoList;
  }

  @override
  Future<Video> getVideoDetail(String url, int ids) async{
    var internalUrl = url + '?ac=videolist&ids=' + ids.toString();
    var response = await http.get(internalUrl);
    _xml2json.parse(response.body);
    var parsedData = _xml2json.toGData();
    return Video.fromJson(jsonDecode(parsedData)['rss']['list']['video']);
  }
}
