import 'package:flutter/material.dart';
import 'package:news_application/views/category_view.dart';
import '../models/category_model.dart';

class CategotyCard extends StatelessWidget {
  const CategotyCard({super.key, required this.category});
  final CategoryModel category; /////////////
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(category:category.categoryName ,);
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(6),
        height: 110,
        width: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(category.image),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            category.categoryName,
            style: const TextStyle(
                fontSize: 25, color: Colors.red, fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
