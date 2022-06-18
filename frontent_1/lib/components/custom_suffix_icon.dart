import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tutorial/size_config.dart';

class CustomSuffix extends StatelessWidget {
  const CustomSuffix({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
      ),
      child: SvgPicture.asset(
        icon,
        height: getProportionateScreenWidth(18),
      ),
    );
  }
}
