import 'package:flutter/material.dart';

import '../import.dart';
import 'badge.dart';

class CardDetailActions extends StatelessWidget {
  const CardDetailActions({
    Key? key,
    required this.locationPress,
    required this.favoritePress,
    required this.status,
  }) : super(key: key);

  final VoidCallback locationPress;
  final VoidCallback favoritePress;
  final BadgeStatus status;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Badge(status: status),
        const Spacer(),
        CircularIconButton(
          press: locationPress,
          color: Theme.of(context).primaryColor,
          icon: Icons.location_on,
          backgroundColor:
              Theme.of(context).primaryColor.withOpacity(kPrimaryOpacity),
        ),
        CircularIconButton(
          press: favoritePress,
          color: Colors.red,
          icon: Icons.favorite,
          backgroundColor: Colors.red.withOpacity(kPrimaryOpacity),
        ),
      ],
    );
  }
}
