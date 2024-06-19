import 'package:dio/dio.dart';
import 'package:news_application/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=a2a73e59ce654f94b3d76786870895ff&category=$category');

      Map<String, dynamic> jsonData = response.data;
      // list <dynamic>  or  Map <String, dynamic>

      List<dynamic> articles = jsonData["articles"];
      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        // each object in article will be converted into object  of articlemodel
        ArticleModel articleModel = ArticleModel(
            image: article["urlToImage"],
            title: article["title"],
            subTitle: article["description"]);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }

  void getBusinessGenralNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=a2a73e59ce654f94b3d76786870895ff&category=business');
    print(response);
  }

  void getEntertainmentNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=a2a73e59ce654f94b3d76786870895ff&category=entertainment');
    print(response);
  }

  void getHealthNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=a2a73e59ce654f94b3d76786870895ff&category=health');
    print(response);
  }

  void getScienceNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=a2a73e59ce654f94b3d76786870895ff&category=science');
    print(response);
  }

  void getSportsNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=a2a73e59ce654f94b3d76786870895ff&category=sports');
    print(response);
  }

  void getTechnologyNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=a2a73e59ce654f94b3d76786870895ff&category=technology');
    print(response);
  }
}
