
class Site {
  int id;
  String key;
  String name;
  String api;
  String download;
  String group;
  bool isActive;
  String status;

  Site(
      {this.id,
        this.key,
        this.name,
        this.api,
        this.download,
        this.group,
        this.isActive,
        this.status});

  Site.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    key = json['key'];
    name = json['name'];
    api = json['api'];
    download = json['download'];
    group = json['group'];
    isActive = json['isActive'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['key'] = this.key;
    data['name'] = this.name;
    data['api'] = this.api;
    data['download'] = this.download;
    data['group'] = this.group;
    data['isActive'] = this.isActive;
    data['status'] = this.status;
    return data;
  }
}
