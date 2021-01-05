import 'package:zy_player_tv/data/models/class_model.dart';
import 'package:zy_player_tv/data/models/class_result_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';

abstract class MovieRemoteDataSource {
  Future<List<ClassModel>> getClassList(String url);
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
}
