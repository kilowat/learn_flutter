import 'package:flutter/material.dart';
import 'package:flutter_app_ui_2/models/Categories.dart';
import 'package:flutter_app_ui_2/screens/home/components/category_card.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    Key? key,
    required this.categories,
  }) : super(key: key);
  final List<Category> categories;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => CategoryCard(category: categories[index]),
        ),
      ),
    );
  }
}
