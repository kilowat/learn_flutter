import 'package:flutter/material.dart';
import 'package:tutorial/components/btn_with_counter.dart';
import 'package:tutorial/screens/cart/cart_screen.dart';
import 'package:tutorial/size_config.dart';

import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          BtnWidthCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () {
              Navigator.pushNamed(context, CartScreen.routeName);
            },
          ),
          BtnWidthCounter(
            svgSrc: "assets/icons/Bell.svg",
            count: 1,
            press: () {},
          ),
        ],
      ),
    );
  }
}
