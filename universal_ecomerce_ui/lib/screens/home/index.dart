import 'package:flutter/material.dart';

import '../../import.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ScreenContainer(
        gradient: kHomeScreenGradient,
        backgroundImage: kBackgroundDecorationImage,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 70,
            bottom: NavBar.height + kDefaultPadding / 2,
          ),
          child: Column(
            children: [
              ScreenTitle(text: S.of(context).HOME_SCREEN_TITLE),
              const SizedBox(height: 20),
              const SearchInput(),
              const SizedBox(height: 20),
              const _BannerList(),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _RecommendLink(
                    title: S.of(context).NEAREST_RESTAURANT,
                    press: () {
                      navigator.push(const RestaurantsScreen().getRoute());
                    },
                  ),
                  const SizedBox(height: 10),
                  const _RestaurantList(),
                  const SizedBox(height: 5),
                  _RecommendLink(
                    title: S.of(context).POPULAR_MENU,
                    press: () {},
                  ),
                  const SizedBox(height: 10),
                  PopularMenu(menus: menuDemo.sublist(0, 4)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BannerList extends StatefulWidget {
  const _BannerList({
    Key? key,
  }) : super(key: key);

  @override
  State<_BannerList> createState() => _BannerListState();
}

class _BannerListState extends State<_BannerList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: Sizes.dimen_150.w,
      child: _BannerItem(banner: bannersDemo[0]),
    );
  }
}

class _BannerItem extends StatelessWidget {
  const _BannerItem({
    Key? key,
    required this.banner,
  }) : super(key: key);
  final BannerModel banner;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.dimen_20),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(banner.image),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Align(
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    banner.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: Sizes.dimen_17.sp),
                  ),
                  SizedBox(height: Sizes.dimen_6.sp),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(10, 5),
                            blurRadius: 15,
                            color: Colors.black.withOpacity(0.15))
                      ],
                    ),
                    child: SizedBox(
                      height: Sizes.dimen_32.w,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(Sizes.dimen_6.w),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding.w,
                          ),
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: Text(
                          S.of(context).BUY_NOW,
                          style: TextStyle(fontSize: Sizes.dimen_10.sp),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _RestaurantList extends StatelessWidget {
  const _RestaurantList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cardWidthMultiply = Responsive.isTablePortrait(context) ? 4.2 : 2.2;

    return Column(
      children: [
        SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 4, left: 15, right: 15),
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              restaurantDemo.length,
              (index) => InkWell(
                onTap: () {
                  navigator.push(
                      RestDetailScreen(rest: restaurantDemo[index]).getRoute());
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: ScreenUtil.screenWidth / cardWidthMultiply -
                      kDefaultPadding,
                  child: RestaurantCard(
                    restaurant: restaurantDemo[index],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _RecommendLink extends StatelessWidget {
  const _RecommendLink({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline5,
          ),
          TextButton(
            onPressed: press,
            child: Text(
              S.of(context).VIEW_MORE,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).buttonTheme.colorScheme!.secondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
