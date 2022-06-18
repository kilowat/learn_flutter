import 'package:flutter/material.dart';
import 'package:tutorial/components/rounded_btn_icon.dart';
import 'package:tutorial/models/Product.dart';
import 'package:tutorial/screens/details/components/color_dot.dart';
import 'package:tutorial/size_config.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 2;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDot(
              color: product.colors[index],
              isSelected: selectedColor == index,
            ),
          ),
          const Spacer(),
          RoundedBtnIcon(
            iconData: Icons.remove,
            press: () {},
          ),
          SizedBox(width: getProportionateScreenWidth(15)),
          RoundedBtnIcon(
            iconData: Icons.add,
            press: () {},
          ),
        ],
      ),
    );
  }
}
