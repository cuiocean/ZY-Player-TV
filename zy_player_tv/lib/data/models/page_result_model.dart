class PageResultModel {
  String page;
  String pagecount;
  String pagesize;
  String recordcount;

  PageResultModel({this.page, this.pagecount, this.pagesize, this.recordcount});

  PageResultModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    pagecount = json['pagecount'];
    pagesize = json['pagesize'];
    recordcount = json['recordcount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    data['pagecount'] = this.pagecount;
    data['pagesize'] = this.pagesize;
    data['recordcount'] = this.recordcount;
    return data;
  }
}