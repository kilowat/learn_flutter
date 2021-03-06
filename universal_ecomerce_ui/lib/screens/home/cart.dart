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
                  child: Dismissible(
                    key: Key(basketDemo[index].id.toString()),
                    direction: DismissDirection.endToStart,
                    background: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: kSecondaryVariant,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: const [
                          Spacer(),
                          Icon(
                            Icons.remove_shopping_cart,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    child: _BasketItem(
                      basketItem: basketDemo[index],
                    ),
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
    const columnTextStyle = TextStyle(color: Colors.white, fontSize: 14);
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
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: const [
                Text('Sub-Total', style: columnTextStyle),
                Spacer(),
                Text('120 \$', style: columnTextStyle),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: const [
                Text('Delivery Charge', style: columnTextStyle),
                Spacer(),
                Text('12 \$', style: columnTextStyle),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: const [
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
      height: 100,
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
          _QuantityInput(basketItem: basketItem)
        ],
      ),
    );
  }
}

class _QuantityInput extends StatelessWidget {
  const _QuantityInput({
    Key? key,
    required this.basketItem,
  }) : super(key: key);

  final BasketItemModel basketItem;

  @override
  Widget build(BuildContext context) {
    final qtyColor =
        MediaQuery.of(context).platformBrightness == Brightness.light
            ? Theme.of(context).primaryColor
            : Colors.white.withOpacity(0.7);
    return Row(
      children: [
        _QuantityButton(press: () {}, icon: Icons.remove),
        SizedBox(
          height: 26,
          width: 30,
          child: TextField(
            controller: TextEditingController(
              text: basketItem.quantity.toString(),
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            keyboardType: const TextInputType.numberWithOptions(
              decimal: false,
              signed: false,
            ),
            style: TextStyle(color: qtyColor),
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.only(left: 4, top: 0, bottom: 16),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
          ),
        ),
        _QuantityButton(press: () {}, icon: Icons.add),
      ],
    );
  }
}

class _QuantityButton extends StatelessWidget {
  const _QuantityButton({
    Key? key,
    required this.press,
    required this.icon,
  }) : super(key: key);

  final VoidCallback press;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 26,
      height: 26,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Theme.of(context).primaryColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
        onPressed: press,
        child: Icon(
          icon,
          size: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
