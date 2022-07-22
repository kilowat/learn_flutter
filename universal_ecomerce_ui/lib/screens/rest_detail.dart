import 'package:flutter/material.dart';
import 'package:universal_ecommerce_ui/widgets/badge.dart';

import '../import.dart';

class RestDetailScreen extends StatelessWidget {
  static const double decorHeight = 30;
  const RestDetailScreen({
    Key? key,
    required this.rest,
  }) : super(key: key);

  final RestaurantModel rest;

  Route<T> getRoute<T>() {
    return buildRoute<T>(
      '/rest_detail?id=${rest.id}',
      builder: (_) => this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: const BackButtonContrast(),
            leadingWidth: 45 + kDefaultPadding,
            bottom: PreferredSize(
              preferredSize: const Size(0, 40),
              child: Container(),
            ),
            pinned: false,
            expandedHeight: ScreenUtil.screenHeight * 0.45,
            flexibleSpace: ClippedBlock(
              child: rest.photos.isNotEmpty
                  ? Image.asset(
                      rest.photos[0],
                      fit: BoxFit.cover,
                    )
                  : const SizedBox(),
            ),
          ),
          SliverToBoxAdapter(
            child: _RestContent(rest: rest),
          ),
        ],
      ),
    );
  }
}

class _RestContent extends StatelessWidget {
  const _RestContent({
    Key? key,
    required this.rest,
  }) : super(key: key);
  final RestaurantModel rest;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      height: 1000,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardDetailActions(
            locationPress: () {},
            favoritePress: () {},
            status: BadgeStatus.popular,
          ),
          const SizedBox(height: 10),
          Text(
            rest.name,
            style: Theme.of(context).textTheme.headline2,
          )
        ],
      ),
    );
  }
}
