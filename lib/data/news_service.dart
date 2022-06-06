import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:boot1_project/models/article.dart';
import 'package:boot1_project/models/news.dart';

class NewsService {
  static NewsService _singleton = NewsService._internal();
  NewsService._internal();

  factory NewsService() {
    return _singleton;
  }

  static Future<List<Articles>> getNews() async {
    String url =
        "https://newsapi.org/v2/everything?q=recycle&apiKey=3807ceba236246c5a2dd6b842a219156";



    final response = await http.get(url);

    if (response.body.isNotEmpty) {
      final responseJson = json.decode(response.body);
      News news = News.fromJson(responseJson);
      return news.articles;
    }
    return null;
  }
}