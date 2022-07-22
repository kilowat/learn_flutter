import 'package:flutter/material.dart';
import 'package:universal_ecommerce_ui/widgets/badge.dart';

import '../import.dart';

class DetailContent extends StatelessWidget {
  const DetailContent({
    Key? key,
    required this.title,
    this.distance,
    this.rating,
    this.detailText,
  }) : super(key: key);
  final String title;
  final String? distance;
  final double? rating;
  final String? detailText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardDetailActions(
            locationPress: () {},
            favoritePress: () {},
            status: BadgeStatus.popular,
          ),
          const SizedBox(height: 10),
          _Title(text: title),
          const SizedBox(height: 10),
          _Info(
            distance: distance,
            rating: rating,
          ),
          const SizedBox(height: 20),
          Text(
            detailText ?? '',
          )
        ],
      ),
    );
  }
}

class _Info extends StatelessWidget {
  const _Info({
    Key? key,
    this.distance,
    this.rating,
    this.orders,
  }) : super(key: key);

  final String? distance;
  final double? rating;
  final int? orders;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (distance != null)
          Row(
            children: [
              Icon(Icons.location_on, color: Theme.of(context).primaryColor),
              Text(
                distance ?? '',
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
        if (distance != null) const SizedBox(width: 15),
        if (rating != null)
          Row(
            children: [
              Icon(Icons.star, color: Theme.of(context).primaryColor),
              Text(
                '${rating} Rating',
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
        if (orders != null)
          Row(
            children: [
              Icon(Icons.add_shopping_cart,
                  color: Theme.of(context).primaryColor),
              Text(
                '${orders}+ orders',
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline2,
    );
  }
}
