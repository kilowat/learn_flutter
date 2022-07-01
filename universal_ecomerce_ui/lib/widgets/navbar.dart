import 'package:flutter/material.dart';
import 'package:universal_ecommerce_ui/import.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
    required this.items,
  }) : super(key: key);
  final List<NavBarItem> items;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: getProportionHeight(75),
        margin: const EdgeInsets.all(kDefaultPadding / 2),
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 0),
                blurRadius: 10,
                color: Colors.black12.withOpacity(0.07))
          ],
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, children: items),
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    Key? key,
    required this.label,
    required this.icon,
    required this.press,
    this.isSelected = false,
    this.count = 0,
  }) : super(key: key);

  final bool isSelected;
  final String label;
  final IconData icon;
  final int count;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: isSelected ? 2 : 1,
      child: InkWell(
        onTap: press,
        child: Stack(
          children: [
            _Item(icon: icon, isSelected: isSelected, label: label),
            if (count > 0) _Counter(count: count),
          ],
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    Key? key,
    required this.icon,
    required this.isSelected,
    required this.label,
  }) : super(key: key);

  final IconData icon;
  final bool isSelected;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionWidth(10),
        horizontal: getProportionWidth(10),
      ),
      decoration: isSelected
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).primaryColor.withOpacity(0.5),
            )
          : const BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected
                ? Theme.of(context).primaryColor
                : Theme.of(context).primaryColor.withOpacity(0.3),
            size: getProportionWidth(28),
          ),
          if (isSelected)
            Padding(
              padding: EdgeInsets.only(left: getProportionWidth(10)),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: getProportionWidth(12),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _Counter extends StatelessWidget {
  const _Counter({
    Key? key,
    required this.count,
  }) : super(key: key);

  final int count;

  @override
  Widget build(BuildContext context) {
    final indicatorColor =
        MediaQuery.of(context).platformBrightness == Brightness.light
            ? Colors.white
            : Colors.black;
    return Positioned(
      left: getProportionWidth(15),
      top: getProportionWidth(12),
      child: Container(
        width: getProportionWidth(16),
        height: getProportionWidth(16),
        decoration: BoxDecoration(
          border: Border.all(color: indicatorColor, width: 2),
          shape: BoxShape.circle,
          color: Colors.red,
        ),
        child: Center(
          child: Text(
            count.toString(),
            style: TextStyle(
                height: 0,
                color: indicatorColor,
                fontSize: getProportionWidth(8),
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
