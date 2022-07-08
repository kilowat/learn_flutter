import 'package:flutter/material.dart';

import '../import.dart';

class RestaurantCard extends StatelessWidget {
  static const double width = 147;
  static const double height = 184;
  const RestaurantCard({Key? key, required this.restaurant}) : super(key: key);

  final RestaurantModel restaurant;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: width / height,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: const Offset(4, 1),
                blurRadius: 5,
                color: Colors.black12.withOpacity(0.01))
          ],
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).colorScheme.background,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.9,
                child: Image.asset(
                  restaurant.image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              restaurant.name,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              restaurant.distance,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w300,
                color: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .color!
                    .withOpacity(0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
