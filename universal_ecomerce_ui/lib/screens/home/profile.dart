import 'dart:ui';

import 'package:flutter/material.dart';

import '../../import.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: const Size(0, 20),
              child: Container(),
            ),
            pinned: false,
            expandedHeight: ScreenUtil.screenHeight * 0.4,
            flexibleSpace: Stack(
              clipBehavior: Clip.none,
              children: [
                const Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: _Avatar(),
                ),
                Positioned(
                  bottom: -1,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0.w),
                        topLeft: Radius.circular(30.0.w),
                      ),
                      color: Theme.of(context).colorScheme.secondaryContainer,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: _ProfileContent(),
          ),
        ],
      ),
    );
  }
}

class _ProfileContent extends StatelessWidget {
  const _ProfileContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isLightTheme =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: ScreenUtil.screenHeight * 0.6 - kDefaultPadding,
      ),
      child: Container(
        padding: const EdgeInsets.only(
          top: 0,
          bottom: kDefaultPadding,
          left: kDefaultPadding,
          right: kDefaultPadding,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          gradient: isLightTheme ? kProfileScreenGradient : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Label(text: "Member gold"),
            const SizedBox(height: 24),
            _ProfileName(
              name: 'Anam Wusono',
              email: 'anamwp66@gmail.com',
              press: () {},
            ),
            const _PromoList(),
            const SizedBox(height: 24),
            Text(
              S.current.FAVORITE,
              style: Theme.of(context).textTheme.headline5,
            ),
            MenuList(menus: menuDemo, isFavorite: true),
          ],
        ),
      ),
    );
  }
}

class _PromoList extends StatelessWidget {
  static const double height = 64;
  const _PromoList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: List.generate(
            1,
            (index) => Container(
              height: height,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/demo/v_icon.png'),
                    const SizedBox(width: 10),
                    const Text('You Have 3 Voucher')
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil.screenWidth,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/demo/profile_2.jpg'),
        ),
      ),
    );
  }
}

class _ProfileName extends StatelessWidget {
  const _ProfileName({
    Key? key,
    required this.name,
    required this.email,
    required this.press,
  }) : super(key: key);

  final String name;
  final String email;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: Theme.of(context).textTheme.headline2,
            ),
            IconButton(
              onPressed: press,
              icon: Icon(
                Icons.edit,
                size: 24,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
        Text(
          email,
          style: Theme.of(context).textTheme.caption,
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
