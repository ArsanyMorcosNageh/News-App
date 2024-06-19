import 'package:flutter/material.dart';
import '../models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({Key? key, required this.articleModel}) : super(key: key);
  final ArticleModel articleModel;

  Widget build(BuildContext context) {
    Widget checkImage = articleModel.image != null
        ? Image.network(
            articleModel.image!,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          )
        : Image.asset(
            'assets/news_image1.jpg',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: checkImage,
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle ?? "",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
