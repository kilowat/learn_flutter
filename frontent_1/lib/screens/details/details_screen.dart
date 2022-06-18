import 'package:flutter/material.dart';
import 'package:tutorial/models/Product.dart';

import 'components/body.dart';
import 'components/custom_appbar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);
  static const String routeName = '/details';

  @override
  Widget build(BuildContext context) {
    final ProductDetailArguments arguments =
        ModalRoute.of(context)?.settings.arguments as ProductDetailArguments;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: CustomAppBar(
        starRang: arguments.product.rating,
      ),
      body: Body(
        product: arguments.product,
      ),
    );
  }
}

class ProductDetailArguments {
  final Product product;

  ProductDetailArguments({required this.product});
}
