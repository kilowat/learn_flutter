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
      padding: EdgeInsets.symmetric(
        horizontal: getProportionWidth(kDefaultPadding),
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
            clipBehavior: Clip.none,
            children: [
              InkWell(
                child: Container(
                  width: getProportionWidth(45),
                  height: getProportionWidth(45),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: MediaQuery.of(context).platformBrightness ==
                            Brightness.light
                        ? Colors.white
                        : Colors.black45.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      if (MediaQuery.of(context).platformBrightness ==
                          Brightness.light)
                        BoxShadow(
                            offset: const Offset(8, 8),
                            blurRadius: 12,
                            color: Colors.black12.withOpacity(0.07))
                    ],
                  ),
                  child: Icon(
                    Icons.notifications_outlined,
                    size: getProportionWidth(28),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
