import 'package:flutter/material.dart';

import '../import.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key? key,
    required this.menu,
    this.isFavorite = false,
  }) : super(key: key);

  final MenuModel menu;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
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
              const SizedBox(height: 1),
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
              const SizedBox(height: 4),
              Text(
                '\$${menu.price}',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
          const Spacer(),
          if (isFavorite)
            RoundedPrimaryButton(
              text: "Buy Again",
              press: () {},
            ),
        ],
      ),
    );
  }
}
