import 'package:flutter/material.dart';

import '../import.dart';

class NavBar extends StatelessWidget {
  NavBar({
    Key? key,
    required this.press,
    required this.items,
    this.selectedIndex = 0,
  }) : super(key: key);

  final List<NavBarItem> items;
  static const double height = 75;
  final void Function(int index) press;
  int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: NavBar.height,
        margin: const EdgeInsets.all(kDefaultPadding / 2),
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 0),
              blurRadius: 10,
              color: Colors.black12.withOpacity(0.07),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            items.length,
            (index) => InkWell(
              onTap: () {
                press(index);
              },
              child: _buildNavBarItem(
                  context: context,
                  index: index,
                  label: items[index].label,
                  icon: items[index].icon,
                  count: items[index].count,
                  isSelected: index == selectedIndex),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavBarItem({
    required BuildContext context,
    required int index,
    required String label,
    required IconData icon,
    count = 0,
    isSelected = false,
  }) {
    return Stack(
      children: [
        FractionallySizedBox(
          heightFactor: 0.8,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 2,
            ),
            decoration: isSelected
                ? BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Theme.of(context).primaryColor.withOpacity(0.5),
                  )
                : const BoxDecoration(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  color: isSelected
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).primaryColor.withOpacity(0.3),
                  size: 34,
                ),
                Opacity(
                  opacity: isSelected ? 1 : 0,
                  child: Text(
                    label,
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        if (count > 0) _Counter(count: count),
      ],
    );
  }
}

class NavBarItem {
  NavBarItem({
    required this.label,
    required this.icon,
    this.count = 0,
    this.isSelected = false,
  });

  final String label;
  final IconData icon;
  final int count;
  bool isSelected;
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
      left: 42,
      top: 10,
      child: Container(
        width: 16,
        height: 16,
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
                fontSize: 8,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
