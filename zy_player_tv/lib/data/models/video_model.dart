class Video {
  Last last;
  Last id;
  Last tid;
  Name name;
  Last type;
  Last pic;
  Last lang;
  Last area;
  Last year;
  Last state;
  Name note;
  Name actor;
  Name director;
  Dl dl;
  Name des;

  Video(
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
        this.des});

  Video.fromJson(Map<String, dynamic> json) {
    last = json['last'] != null ? new Last.fromJson(json['last']) : null;
    id = json['id'] != null ? new Last.fromJson(json['id']) : null;
    tid = json['tid'] != null ? new Last.fromJson(json['tid']) : null;
    name = json['name'] != null ? new Name.fromJson(json['name']) : null;
    type = json['type'] != null ? new Last.fromJson(json['type']) : null;
    pic = json['pic'] != null ? new Last.fromJson(json['pic']) : null;
    lang = json['lang'] != null ? new Last.fromJson(json['lang']) : null;
    area = json['area'] != null ? new Last.fromJson(json['area']) : null;
    year = json['year'] != null ? new Last.fromJson(json['year']) : null;
    state = json['state'] != null ? new Last.fromJson(json['state']) : null;
    note = json['note'] != null ? new Name.fromJson(json['note']) : null;
    actor = json['actor'] != null ? new Name.fromJson(json['actor']) : null;
    director =
    json['director'] != null ? new Name.fromJson(json['director']) : null;
    dl = json['dl'] != null ? new Dl.fromJson(json['dl']) : null;
    des = json['des'] != null ? new Name.fromJson(json['des']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.last != null) {
      data['last'] = this.last.toJson();
    }
    if (this.id != null) {
      data['id'] = this.id.toJson();
    }
    if (this.tid != null) {
      data['tid'] = this.tid.toJson();
    }
    if (this.name != null) {
      data['name'] = this.name.toJson();
    }
    if (this.type != null) {
      data['type'] = this.type.toJson();
    }
    if (this.pic != null) {
      data['pic'] = this.pic.toJson();
    }
    if (this.lang != null) {
      data['lang'] = this.lang.toJson();
    }
    if (this.area != null) {
      data['area'] = this.area.toJson();
    }
    if (this.year != null) {
      data['year'] = this.year.toJson();
    }
    if (this.state != null) {
      data['state'] = this.state.toJson();
    }
    if (this.note != null) {
      data['note'] = this.note.toJson();
    }
    if (this.actor != null) {
      data['actor'] = this.actor.toJson();
    }
    if (this.director != null) {
      data['director'] = this.director.toJson();
    }
    if (this.dl != null) {
      data['dl'] = this.dl.toJson();
    }
    if (this.des != null) {
      data['des'] = this.des.toJson();
    }
    return data;
  }
}

class Last {
  String t;

  Last({this.t});

  Last.fromJson(Map<String, dynamic> json) {
    t = json['$t'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$t'] = this.t;
    return data;
  }
}

class Name {
  String sCdata;

  Name({this.sCdata});

  Name.fromJson(Map<String, dynamic> json) {
    sCdata = json['__cdata'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['__cdata'] = this.sCdata;
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
  String flag;
  String sCdata;

  Dd({this.flag, this.sCdata});

  Dd.fromJson(Map<String, dynamic> json) {
    flag = json['flag'];
    sCdata = json['__cdata'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['flag'] = this.flag;
    data['__cdata'] = this.sCdata;
    return data;
  }
}
