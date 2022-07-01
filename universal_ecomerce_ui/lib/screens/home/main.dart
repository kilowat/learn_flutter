import 'package:flutter/material.dart';
import 'package:universal_ecommerce_ui/import.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BackgroundGradient(
        child: Container(
          padding: const EdgeInsets.only(
            top: 60,
            bottom: NavBar.height + kDefaultPadding / 2,
          ),
          width: double.infinity,
          decoration: const BoxDecoration(
            image: kBackgroundDecorationImage,
          ),
          child: Column(
            children: [
              ScreenTitle(text: S.of(context).HOME_SCREEN_TITLE),
              SizedBox(height: getProportionWidth(20)),
              const SearchInput(),
              SizedBox(height: getProportionWidth(20)),
              const _BannerList(),
              SizedBox(height: getProportionWidth(20)),
              Column(
                children: [
                  _RecommendLink(
                    title: S.of(context).NEAREST_RESTAURANT,
                    press: () {},
                  ),
                  SizedBox(height: getProportionHeight(10)),
                  const _RestaurantList(),
                  SizedBox(height: getProportionWidth(5)),
                  _RecommendLink(
                    title: S.of(context).POPULAR_MENU,
                    press: () {},
                  ),
                  SizedBox(height: getProportionHeight(10)),
                  const PopularMenu(),
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
      height: getProportionWidth(150),
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
            borderRadius: BorderRadius.circular(20),
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
                      fontSize: getProportionWidth(17),
                    ),
                  ),
                  SizedBox(height: getProportionWidth(5)),
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
                      height: getProportionWidth(24),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding,
                          ),
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: Text(
                          S.of(context).BUY_NOW,
                          style: TextStyle(fontSize: getProportionWidth(10)),
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
    return Column(
      children: [
        SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 4),
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              restaurantDemo.length,
              (index) => Container(
                margin: EdgeInsets.only(left: getProportionWidth(20)),
                child: RestaurantCard(
                  restaurant: restaurantDemo[index],
                ),
              ),
            ),
          ),
        ),
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
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: getProportionWidth(15),
            ),
          ),
          TextButton(
            onPressed: press,
            child: Text(
              S.of(context).VIEW_MORE,
              style: TextStyle(
                fontSize: getProportionWidth(12),
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
