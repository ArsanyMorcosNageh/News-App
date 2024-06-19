//import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../models/article_model.dart';

//import 'package:cached_network_image/cached_network_image.dart';

// cached network image
class NewsTile extends StatelessWidget {
  //const NewsTile({super.key, required this.articleModel});
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel; ///////////
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
ClipRRect(
  
  borderRadius: BorderRadius.circular(6),



  child:Image.network(
    //'https://cdn.pixabay.com/photo/2016/02/01/00/56/news-1172463_1280.jpg'
  articleModel.image ?? 'https://cdn.pixabay.com/photo/2016/02/01/00/56/news-1172463_1280.jpg',
height: 200,
    width: double.infinity,
    fit: BoxFit.cover,
  ),



// child: 
// CachedNetworkImage(
//   imageUrl:articleModel.image??"blob:https://web.whatsapp.com/3f8dc684-d102-42b9-8ca7-3bf14edfe1c5",
//   height: 200,
//   width: double.infinity,
//   fit: BoxFit.cover,
//   placeholder: (context, url) => CircularProgressIndicator(),
//   errorWidget: (context, url, error) => Icon(Icons.error),
// ),


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
              maxLines:1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          )
        ],
      
    );
  }
}
