import 'package:flutter/material.dart';
import '../models/category_model.dart';
import 'category_card.dart';

class CaregoryListView extends StatelessWidget {
  const CaregoryListView({super.key,});

  final List<CategoryModel> categories = const [
    CategoryModel(image: "assets/technology.jpeg", categoryName: "Technology"),
    CategoryModel(image: "assets/business.jpeg", categoryName: "Business"),
    CategoryModel(image: "assets/entertainment.jpeg", categoryName: "Entertainment"),
    CategoryModel(image: "assets/health.jpeg", categoryName: "Health"),
    CategoryModel(image: "assets/science.jpeg", categoryName: "Science"),
    CategoryModel(image: "assets/Calendar_header.webp", categoryName: "Sports"),
    CategoryModel(image: "assets/general.avif", categoryName: "General"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategotyCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
