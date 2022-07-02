import 'package:flutter/material.dart';
import 'package:universal_ecommerce_ui/import.dart';

class PopularMenu extends StatelessWidget {
  const PopularMenu({
    Key? key,
    required this.menus,
  }) : super(key: key);

  final List<MenuModel> menus;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: List.generate(
              menus.length,
              (index) => _MenuCard(menu: menus[index]),
            ),
          ),
        )
      ],
    );
  }
}

class _MenuCard extends StatelessWidget {
  const _MenuCard({
    Key? key,
    required this.menu,
  }) : super(key: key);

  final MenuModel menu;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding),
      padding: EdgeInsets.all(getProportionWidth(10)),
      height: getProportionWidth(87),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                menu.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                menu.title,
                style: TextStyle(
                  fontSize: getProportionWidth(15),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                menu.subTitle,
                style: TextStyle(
                  fontSize: getProportionWidth(14),
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .color!
                      .withOpacity(0.3),
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            '\$${menu.price}',
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      ),
    );
  }
}
