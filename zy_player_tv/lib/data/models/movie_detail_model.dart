class Detail {
  String last;
  int id;
  int tid;
  String name;
  String type;
  String pic;
  String lang;
  String area;
  int year;
  int state;
  String note;
  String actor;
  String director;
  Dl dl;
  String des;
  List<String> m3u8List;
  String rate;

  Detail(
      {this.last,
        this.id,
        this.tid,
        this.name,
        this.type,
        this.pic,
        this.lang,
        this.area,
        this.year,
        this.state,
        this.note,
        this.actor,
        this.director,
        this.dl,
        this.des,
        this.m3u8List,
        this.rate});

  Detail.fromJson(Map<String, dynamic> json) {
    last = json['last'];
    id = json['id'];
    tid = json['tid'];
    name = json['name'];
    type = json['type'];
    pic = json['pic'];
    lang = json['lang'];
    area = json['area'];
    year = json['year'];
    state = json['state'];
    note = json['note'];
    actor = json['actor'];
    director = json['director'];
    dl = json['dl'] != null ? new Dl.fromJson(json['dl']) : null;
    des = json['des'];
    m3u8List = json['m3u8List'].cast<String>();
    rate = json['rate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['last'] = this.last;
    data['id'] = this.id;
    data['tid'] = this.tid;
    data['name'] = this.name;
    data['type'] = this.type;
    data['pic'] = this.pic;
    data['lang'] = this.lang;
    data['area'] = this.area;
    data['year'] = this.year;
    data['state'] = this.state;
    data['note'] = this.note;
    data['actor'] = this.actor;
    data['director'] = this.director;
    if (this.dl != null) {
      data['dl'] = this.dl.toJson();
    }
    data['des'] = this.des;
    data['m3u8List'] = this.m3u8List;
    data['rate'] = this.rate;
    return data;
  }
}

class Dl {
  Dd dd;

  Dl({this.dd});

  Dl.fromJson(Map<String, dynamic> json) {
    dd = json['dd'] != null ? new Dd.fromJson(json['dd']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.dd != null) {
      data['dd'] = this.dd.toJson();
    }
    return data;
  }
}

class Dd {
  String sT;
  String sFlag;

  Dd({this.sT, this.sFlag});

  Dd.fromJson(Map<String, dynamic> json) {
    sT = json['_t'];
    sFlag = json['_flag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_t'] = this.sT;
    data['_flag'] = this.sFlag;
    return data;
  }
}
