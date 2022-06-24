import 'package:flutter/material.dart';
import 'package:flutter_app_ui_2/components/title_text.dart';
import 'package:flutter_app_ui_2/models/Categories.dart';
import 'package:flutter_app_ui_2/models/Product.dart';
import 'package:flutter_app_ui_2/screens/home/components/categories_list.dart';
import 'package:flutter_app_ui_2/services/fetch_categories.dart';
import 'package:flutter_app_ui_2/services/fetch_products.dart';
import 'package:flutter_app_ui_2/size_config.dart';

import 'recommended.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: const TitleText(
                title: "Browser category",
              ),
            ),
            FutureBuilder(
              future: fetchCategories(),
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? CategoriesList(
                        categories: snapshot.data as List<Category>)
                    : const Center(child: CircularProgressIndicator());
              },
            ),
            const Divider(height: 5),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: const TitleText(title: "Recommend for you"),
            ),
            FutureBuilder(
              future: fetchProducts(),
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? RecommendedProduct(
                        products: snapshot.data as List<Product>)
                    : const Center(
                        child: CircularProgressIndicator(),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
