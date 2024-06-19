import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_application/models/article_model.dart';
import '../services/News_service.dart';
import 'news_tile_list_veiw.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key,required this.category});

  final String category; 

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(category:widget.category );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsTileListView(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text("oops there was an error, try later"),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
