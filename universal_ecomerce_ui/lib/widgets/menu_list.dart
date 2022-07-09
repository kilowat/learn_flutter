import 'package:flutter/material.dart';

import '../import.dart';

class MenuList extends StatelessWidget {
  const MenuList({
    Key? key,
    required this.menus,
    this.isScrollable = false,
    this.isFavorite = false,
  }) : super(key: key);

  final List<MenuModel> menus;
  final bool isScrollable;
  final bool isFavorite;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: isScrollable ? ScrollPhysics() : NeverScrollableScrollPhysics(),
      childAspectRatio: 1 / 0.26,
      mainAxisSpacing: kDefaultPadding,
      crossAxisSpacing: kDefaultPadding,
      crossAxisCount: Responsive.isMobilePortrait(context) ? 1 : 2,
      shrinkWrap: true,
      children: List.generate(menus.length, (index) {
        return MenuCard(menu: menus[index], isFavorite: isFavorite);
      }),
    );
  }
}
