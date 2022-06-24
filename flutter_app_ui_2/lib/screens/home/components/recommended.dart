import 'package:flutter/material.dart';
import 'package:flutter_app_ui_2/models/Product.dart';
import 'package:flutter_app_ui_2/screens/detail/detail_screen.dart';
import 'package:flutter_app_ui_2/size_config.dart';
import 'package:flutter_app_ui_2/template_config.dart';

import 'product_card.dart';

class RecommendedProduct extends StatelessWidget {
  const RecommendedProduct({
    Key? key,
    required this.products,
  }) : super(key: key);
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: EdgeInsets.all(defaultSize),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: SizeConfig.orientation == Orientation.portrait
              ? TemplateConfig.gridCount
              : 4,
          childAspectRatio: 0.639,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        itemBuilder: (context, index) => ProductCard(
          product: products[index],
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(product: products[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
