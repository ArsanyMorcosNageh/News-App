
import 'package:flutter/material.dart';
import 'package:news_application/models/article_model.dart';

import 'news_tile.dart';

//import '../models/article_model.dart';

class NewsTileListView extends StatelessWidget {
  //   final List<ArticleModel> News = const [

  final List<ArticleModel> articles;
  const  NewsTileListView({super.key,required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 27),
        child: NewsTile(
          articleModel: articles[index],
        ),
      );
    }));
  }
}
