import 'package:flutter/material.dart';
import 'package:flutter_app_ui_2/constants.dart';
import 'package:flutter_app_ui_2/models/Product.dart';
import 'package:flutter_app_ui_2/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/body.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset('assets/icons/arrow-long-left.svg'),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/bag.svg'),
        ),
        SizedBox(width: SizeConfig.defaultSize),
      ],
    );
  }
}
