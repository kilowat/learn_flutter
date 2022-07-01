import 'package:flutter/material.dart';
import 'package:universal_ecommerce_ui/import.dart';

class PopularMenu extends StatelessWidget {
  const PopularMenu({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: List.generate(
              2,
              (index) => Container(
                margin: const EdgeInsets.only(bottom: kDefaultPadding),
                padding: EdgeInsets.all(getProportionWidth(10)),
                height: getProportionWidth(87),
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
                          'assets/demo/menu_1.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Green Noddle",
                          style: TextStyle(
                            fontSize: getProportionWidth(15),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Noodle Home",
                          style: TextStyle(
                            fontSize: getProportionWidth(14),
                            color: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .color!
                                .withOpacity(0.3),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      '15',
                      style: TextStyle(
                          fontSize: getProportionWidth(18),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
