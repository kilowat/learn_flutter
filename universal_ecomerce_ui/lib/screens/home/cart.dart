import 'package:flutter/material.dart';

import '../../import.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isLightTheme =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      decoration:
          BoxDecoration(gradient: isLightTheme ? kHomeScreenGradient : null),
      height: ScreenUtil.screenHeight,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
              height: ScreenUtil.screenHeight - (150 + NavBar.height),
              width: ScreenUtil.screenWidth,
              child: ListView.builder(
                itemCount: basketDemo.length,
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.only(
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  child: _BasketItem(
                    basketItem: basketDemo[index],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenUtil.screenHeight -
                (200 + NavBar.height + MediaQuery.of(context).padding.top),
            left: 0,
            child: _TotalBasket(),
          ),
        ],
      ),
    );
  }
}

class _TotalBasket extends StatelessWidget {
  const _TotalBasket({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final columnTextStyle = const TextStyle(color: Colors.white, fontSize: 14);
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding / 2,
        right: kDefaultPadding / 2,
      ),
      padding: const EdgeInsets.all(kDefaultPadding / 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Theme.of(context).primaryColor,
      ),
      height: 220,
      width: ScreenUtil.screenWidth - kDefaultPadding,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Text('Sub-Total', style: columnTextStyle),
                Spacer(),
                Text('120 \$', style: columnTextStyle),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Text('Delivery Charge', style: columnTextStyle),
                Spacer(),
                Text('12 \$', style: columnTextStyle),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Text('Discount', style: columnTextStyle),
                Spacer(),
                Text('10 \$', style: columnTextStyle),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text('Total',
                    style: columnTextStyle.copyWith(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                const Spacer(),
                Text(
                  '100 \$',
                  style: columnTextStyle.copyWith(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 6),
            SizedBox(
              height: 48,
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  backgroundColor: Colors.white,
                ),
                child: const Text('Place my order'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BasketItem extends StatelessWidget {
  const _BasketItem({
    Key? key,
    required this.basketItem,
  }) : super(key: key);

  final BasketItemModel basketItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                basketItem.product.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                basketItem.product.title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 1),
              Text(
                basketItem.product.subTitle,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .color!
                      .withOpacity(0.3),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '\$${basketItem.product.price}',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
