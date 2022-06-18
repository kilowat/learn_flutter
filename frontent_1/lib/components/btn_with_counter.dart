import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tutorial/constants.dart';
import 'package:tutorial/size_config.dart';

class BtnWidthCounter extends StatelessWidget {
  const BtnWidthCounter({
    Key? key,
    required this.svgSrc,
    this.count = 0,
    required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int count;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(100),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenWidth(50),
            width: getProportionateScreenWidth(50),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if (count != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                width: getProportionateScreenWidth(16),
                height: getProportionateScreenWidth(16),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFF4848),
                ),
                child: Center(
                  child: Text(
                    "$count",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(8),
                      height: 1.1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
