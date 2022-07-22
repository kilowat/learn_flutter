import 'package:flutter/material.dart';

import '../import.dart';

class Badge extends StatelessWidget {
  const Badge({
    Key? key,
    required this.status,
  }) : super(key: key);

  final BadgeStatus status;

  @override
  Widget build(BuildContext context) {
    final data = _getData(context);
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      decoration: BoxDecoration(
        color: data.backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        data.text,
        style: Theme.of(context)
            .textTheme
            .labelMedium!
            .copyWith(color: data.color),
      ),
    );
  }

  _BadgeData _getData(BuildContext context) {
    return _BadgeData(
      text: 'Popular',
      color: Theme.of(context).primaryColor,
      backgroundColor:
          Theme.of(context).primaryColor.withOpacity(kPrimaryOpacity),
    );
  }
}

enum BadgeStatus {
  popular,
  top,
  discount,
}

class _BadgeData {
  _BadgeData({
    required this.text,
    required this.color,
    required this.backgroundColor,
  });
  final String text;
  final Color color;
  final Color backgroundColor;
}
