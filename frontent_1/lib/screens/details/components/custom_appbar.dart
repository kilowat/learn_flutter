import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tutorial/components/rounded_btn_icon.dart';
import 'package:tutorial/size_config.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.starRang}) : super(key: key);
  final double? starRang;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          right: getProportionateScreenWidth(20),
          top: getProportionateScreenWidth(10),
          left: getProportionateScreenWidth(20),
        ),
        child: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedBtnIcon(
                iconData: Icons.arrow_back,
                press: () => Navigator.pop(context),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14)),
                child: Row(
                  children: [
                    Text(
                      starRang.toString(),
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset('assets/icons/Star Icon.svg'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
