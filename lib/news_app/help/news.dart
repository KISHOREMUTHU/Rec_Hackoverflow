import 'dart:convert';

import 'package:http/http.dart' as http;

import 'article_model.dart';

class HealthNews {
  List<ArticleModel> healthNews = [];

  Future<void> getNews() async {
    String url =
        'https://newsapi.org/v2/top-headlines?country=in&category=health&apiKey=016418037eaf46ff98834585f697485e';
    Uri uri = Uri.parse(url);
    var response = await http.get(uri);
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        ArticleModel articleModel = ArticleModel(
            title: element['title'] ?? "News",
            description: element['description'] ?? "No description available",
            urlToImage: "assets/workout.jpg",
            author: element['author'] ?? "No author available",
            url: element['url'] ?? "https://www.google.com",
            publishedAt: element['publishedAt'] ?? "No date available",
            content: element['content'] ?? "No content available");
        healthNews.add(articleModel);
      });
    }
  }
}
