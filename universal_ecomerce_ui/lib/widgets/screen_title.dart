import 'package:flutter/material.dart';
import 'package:universal_ecommerce_ui/import.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: getProportionWidth(31),
            ),
          ),
          Stack(
            children: [
              Container(
                width: getProportionWidth(45),
                height: getProportionWidth(45),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    if (MediaQuery.of(context).platformBrightness ==
                        Brightness.light)
                      BoxShadow(
                        offset: const Offset(8, 8),
                        blurRadius: 12,
                        color: Colors.black12.withOpacity(0.07),
                      )
                  ],
                ),
                child: Icon(
                  Icons.notifications_outlined,
                  size: getProportionWidth(28),
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Positioned(
                right: getProportionWidth(15),
                top: getProportionWidth(12),
                child: Container(
                  width: getProportionWidth(6),
                  height: getProportionWidth(6),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
              ),
              SizedBox(
                width: getProportionWidth(45),
                height: getProportionWidth(45),
                child: TextButton(
                  onPressed: () {},
                  child: Container(color: Colors.transparent),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
