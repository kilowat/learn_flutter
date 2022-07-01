import 'package:flutter/material.dart';
import 'package:universal_ecommerce_ui/generated/l10n.dart';
import 'package:universal_ecommerce_ui/import.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 60),
      width: double.infinity,
      height: SizeConfig.screenHeight,
      decoration: const BoxDecoration(
        image: kBackgroundDecorationImage,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ScreenTitle(text: S.of(context).HOME_SCREEN_TITLE),
            SizedBox(height: getProportionWidth(20)),
            const SearchInput(),
            SizedBox(height: getProportionWidth(20)),
            const _BannerList(),
            SizedBox(height: getProportionWidth(25)),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment(0.01, 0.1),
                  colors: <Color>[
                    Colors.white,
                    Color(0xFFF3F7FE),
                  ],
                  tileMode: TileMode.mirror,
                ),
              ),
              child: Column(
                children: const [
                  _RestaurantList(),
                  _PopularMenuList(),
                ],
              ),
            )
          ],
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
        _RecommendLink(
          title: S.of(context).NEAREST_RESTAURANT,
          press: () {},
        ),
        SizedBox(height: getProportionHeight(10)),
        SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 4),
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              6,
              (index) => const RestaurantCard(),
            ),
          ),
        ),
      ],
    );
  }
}

class _PopularMenuList extends StatelessWidget {
  const _PopularMenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _RecommendLink(
          title: S.of(context).POPULAR_MENU,
          press: () {},
        ),
        SizedBox(height: getProportionHeight(kDefaultPadding)),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: List.generate(
              2,
              (index) => Container(
                margin: const EdgeInsets.only(bottom: kDefaultPadding),
                height: getProportionWidth(87),
                color: Colors.purple,
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
