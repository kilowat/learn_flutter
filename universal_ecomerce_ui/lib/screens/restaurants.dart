import 'package:flutter/material.dart';

import '../import.dart';

class RestaurantsScreen extends StatelessWidget {
  const RestaurantsScreen({Key? key}) : super(key: key);
  Route<T> getRoute<T>() {
    return buildRoute<T>(
      '/restaurants',
      builder: (_) => this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final items = [...restaurantDemo, ...restaurantDemo, ...restaurantDemo];
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: ScreenContainer(
          gradient: kHomeScreenGradient,
          backgroundImage: kBackgroundDecorationImage,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: false,
                pinned: false,
                backgroundColor: Colors.transparent,
                expandedHeight: 140.0,
                leadingWidth: 45 + kDefaultPadding,
                elevation: 0,
                leading: BackButtonCustom(),
                title: Text(
                  'Nearest Restaurant',
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    margin: const EdgeInsets.only(top: 70),
                    child: const SearchInput(),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                  bottom: kDefaultPadding,
                  top: kDefaultPadding / 2,
                ),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        Responsive.isMobilePortrait(context) ? 2 : 3,
                    mainAxisSpacing: kDefaultPadding,
                    crossAxisSpacing: kDefaultPadding,
                    childAspectRatio:
                        RestaurantCard.width / RestaurantCard.height,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return InkWell(
                        onTap: () {
                          navigator.push(RestDetailScreen(
                            rest: items[index],
                          ).getRoute());
                        },
                        child: RestaurantCard(
                          restaurant: items[index],
                        ),
                      );
                    },
                    childCount: items.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
