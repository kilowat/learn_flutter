import 'package:flutter/material.dart';
import 'package:flutter_app_ui_2/constants.dart';
import 'package:flutter_app_ui_2/models/Product.dart';
import 'package:flutter_app_ui_2/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    TextStyle lightTextStyle = TextStyle(
      color: kTextColor.withOpacity(0.8),
    );
    double defaultSize = SizeConfig.defaultSize;
    return Container(
      padding: EdgeInsets.all(defaultSize * 2),
      height: defaultSize * 37.5,
      width: defaultSize * 15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            product.category.toUpperCase(),
            style: lightTextStyle,
          ),
          SizedBox(height: defaultSize),
          Text(
            product.title,
            style: TextStyle(
              fontSize: defaultSize * 2.4,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.8,
              height: 1.4,
            ),
          ),
          SizedBox(height: defaultSize * 2),
          Text('From', style: lightTextStyle),
          Text(
            '\$${product.price}',
            style: TextStyle(
              fontSize: defaultSize * 1.6,
              fontWeight: FontWeight.bold,
              height: 1.6,
            ),
          ),
          SizedBox(height: defaultSize * 2),
          Text('Available colors', style: lightTextStyle),
          Row(children: [
            buildColorBox(defaultSize, color: Colors.green, isActive: true),
            buildColorBox(defaultSize, color: Colors.grey, isActive: false),
            buildColorBox(defaultSize, color: Colors.black, isActive: false),
          ]),
        ],
      ),
    );
  }

  Container buildColorBox(double defaultSize,
      {required Color color, bool isActive = false}) {
    return Container(
      margin: EdgeInsets.only(top: defaultSize, right: defaultSize),
      width: defaultSize * 2.4,
      height: defaultSize * 2.4,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: isActive
          ? SvgPicture.asset('assets/icons/check.svg')
          : const SizedBox(),
    );
  }
}
