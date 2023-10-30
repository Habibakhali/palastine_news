
class NewsDataModel {
  NewsDataModel({
      String? status, 
      num? totalResults, 
      String? code, 
      String? message, 
      List<Articles>? articles,}){
    _status = status;
    _totalResults = totalResults;
    _code = code;
    _message = message;
    _articles = articles;
}

  NewsDataModel.fromJson(dynamic json) {
    _status = json['status'];
    _totalResults = json['totalResults'];
    _code = json['code'];
    _message = json['message'];
    if (json['articles'] != null) {
      _articles = [];
      json['articles'].forEach((v) {
        _articles?.add(Articles.fromJson(v));
      });
    }
  }
  String? _status;
  num? _totalResults;
  String? _code;
  String? _message;
  List<Articles>? _articles;
NewsDataModel copyWith({  String? status,
  num? totalResults,
  String? code,
  String? message,
  List<Articles>? articles,
}) => NewsDataModel(  status: status ?? _status,
  totalResults: totalResults ?? _totalResults,
  code: code ?? _code,
  message: message ?? _message,
  articles: articles ?? _articles,
);
  String? get status => _status;
  num? get totalResults => _totalResults;
  String? get code => _code;
  String? get message => _message;
  List<Articles>? get articles => _articles;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['totalResults'] = _totalResults;
    map['code'] = _code;
    map['message'] = _message;
    if (_articles != null) {
      map['articles'] = _articles?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// source : {"id":null,"name":"Aljazeera.net"}
/// author : "رغيد أيوب"
/// title : "أطفال ماليزيا ينظمون مظاهرات داعمة لفلسطين على لعبة روبلوكس"
/// description : "منعهم صغر عمرهم من الالتحاق بالمظاهرات الداعمة للفلسطينيين في الشوارع، فقرروا تنظيم مظاهرة لدعم فلسطين على منصة لعبة \"روبلوكس\" الشهيرة، استقبلت إلى الآن أكثر من 300 ألف زيارة."
/// url : "https://www.aljazeera.net/tech/2023/10/26/%d8%b4%d8%a7%d9%87%d8%af-%d8%a3%d8%b7%d9%81%d8%a7%d9%84-%d9%85%d8%a7%d9%84%d9%8a%d8%b2%d9%8a%d8%a7-%d9%8a%d9%86%d8%b8%d9%85%d9%88%d9%86-%d9%85%d8%b8%d8%a7%d9%87%d8%b1%d8%a7%d8%aa"
/// urlToImage : "https://www.aljazeera.net/wp-content/uploads/2023/10/image-633.jpg?resize=1920%2C1080&quality=80"
/// publishedAt : "2023-10-26T15:59:33Z"
/// content : ". \"\" . 65 . - \" \" (TechCrunch)- . \"\" \" 15 \". 6 \"\" 332 . \" \" \" \" \". \".yall my cousin is 15 and couldnt join a protest so she just went to one on roblox bro im crying \r\n salsabeel (@funnecfox) October … [+90 chars]"

class Articles {
  Articles({
      Source? source, 
      String? author, 
      String? title, 
      String? description, 
      String? url, 
      String? urlToImage, 
      String? publishedAt, 
      String? content,}){
    _source = source;
    _author = author;
    _title = title;
    _description = description;
    _url = url;
    _urlToImage = urlToImage;
    _publishedAt = publishedAt;
    _content = content;
}

  Articles.fromJson(dynamic json) {
    _source = json['source'] != null ? Source.fromJson(json['source']) : null;
    _author = json['author'];
    _title = json['title'];
    _description = json['description'];
    _url = json['url'];
    _urlToImage = json['urlToImage'];
    _publishedAt = json['publishedAt'];
    _content = json['content'];
  }
  Source? _source;
  String? _author;
  String? _title;
  String? _description;
  String? _url;
  String? _urlToImage;
  String? _publishedAt;
  String? _content;
Articles copyWith({  Source? source,
  String? author,
  String? title,
  String? description,
  String? url,
  String? urlToImage,
  String? publishedAt,
  String? content,
}) => Articles(  source: source ?? _source,
  author: author ?? _author,
  title: title ?? _title,
  description: description ?? _description,
  url: url ?? _url,
  urlToImage: urlToImage ?? _urlToImage,
  publishedAt: publishedAt ?? _publishedAt,
  content: content ?? _content,
);
  Source? get source => _source;
  String? get author => _author;
  String? get title => _title;
  String? get description => _description;
  String? get url => _url;
  String? get urlToImage => _urlToImage;
  String? get publishedAt => _publishedAt;
  String? get content => _content;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_source != null) {
      map['source'] = _source?.toJson();
    }
    map['author'] = _author;
    map['title'] = _title;
    map['description'] = _description;
    map['url'] = _url;
    map['urlToImage'] = _urlToImage;
    map['publishedAt'] = _publishedAt;
    map['content'] = _content;
    return map;
  }

}

/// id : null
/// name : "Aljazeera.net"

class Source {
  Source({
      dynamic id, 
      String? name,}){
    _id = id;
    _name = name;
}

  Source.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }
  dynamic _id;
  String? _name;
Source copyWith({  dynamic id,
  String? name,
}) => Source(  id: id ?? _id,
  name: name ?? _name,
);
  dynamic get id => _id;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }

}