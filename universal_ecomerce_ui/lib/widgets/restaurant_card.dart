import 'package:flutter/material.dart';
import 'package:universal_ecommerce_ui/import.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: const EdgeInsets.only(left: kDefaultPadding),
      width: getProportionWidth(147),
      height: getProportionWidth(184),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: const Offset(4, 1),
              blurRadius: 5,
              color: Colors.black12.withOpacity(0.01))
        ],
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: getProportionWidth(92),
            child: Image.asset(
              'assets/demo/rest_1.png',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Name",
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: getProportionWidth(16),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "12 min",
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: getProportionWidth(13),
              fontWeight: FontWeight.w300,
            ),
          )
        ],
      ),
    );
  }
}
