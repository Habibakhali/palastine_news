import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:palastine_news/Model/NewsDataModel.dart';
import 'package:palastine_news/Shared/Component/constant.dart';
class ApiManger{

  static Future<NewsDataModel> getNews(String sourses)async{
    Uri url=Uri.https(BASE,'/v2/everything',{
      'apiKey':APIKEY,
      'q': sourses=='Top News'?'palestinians':sourses=='Al-Aqsa Mosque'?"al-Aqsa AND mosque.":sourses,
      'language':'en'
    });
    http.Response response=await http.get(url);
    var json=jsonDecode(response.body);
    NewsDataModel news=NewsDataModel.fromJson(json);

    return news;
  }
}