import 'package:flutter/material.dart';

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
            child: Column(
              children: [
                DetailContent(
                  title: rest.name,
                  distance: rest.distance,
                  rating: rest.rating,
                  detailText: rest.detailText,
                ),
                Text('Some content'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
