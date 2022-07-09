import 'package:flutter/material.dart';

import '../import.dart';

class PopularMenu extends StatelessWidget {
  const PopularMenu({
    Key? key,
    required this.menus,
  }) : super(key: key);

  final List<MenuModel> menus;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          bottom: kDefaultPadding),
      physics: NeverScrollableScrollPhysics(),
      childAspectRatio: 1 / 0.24,
      mainAxisSpacing: kDefaultPadding,
      crossAxisSpacing: kDefaultPadding,
      crossAxisCount: Responsive.isMobilePortrait(context) ? 1 : 2,
      shrinkWrap: true,
      children: List.generate(menus.length, (index) {
        return _PopularMenuCard(menu: menus[index]);
      }),
    );
  }
}

//Вариант через Wrap
class PopularMenuWrap extends StatelessWidget {
  const PopularMenuWrap({
    Key? key,
    required this.menus,
  }) : super(key: key);

  final List<MenuModel> menus;

  @override
  Widget build(BuildContext context) {
    const cardWidthMultiply = 2;
    final cardWidth =
        ScreenUtil.screenWidth / cardWidthMultiply - (kDefaultPadding * 2);
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
      child: Wrap(
        spacing: kDefaultPadding,
        runSpacing: kDefaultPadding,
        children: List.generate(
          menus.length,
          (index) => Container(
            height: 87,
            width: cardWidth,
            child: _PopularMenuCard(menu: menus[index]),
          ),
        ),
      ),
    );
  }
}

class _PopularMenuCard extends StatelessWidget {
  const _PopularMenuCard({
    Key? key,
    required this.menu,
  }) : super(key: key);

  final MenuModel menu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                menu.title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                menu.subTitle,
                style: TextStyle(
                  fontSize: 14,
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
