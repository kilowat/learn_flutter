import 'package:flutter/material.dart';
import 'package:flutter_cubit_app/misc/colors.dart';
import 'package:flutter_cubit_app/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  ResponsiveButton({
    Key? key,
    this.isResponsive = false,
    this.width = 120,
  }) : super(key: key);
  bool isResponsive;
  double? width;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        clipBehavior: Clip.hardEdge,
        width: isResponsive ? double.infinity : width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResponsive
                ? Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: AppText(
                      text: 'Забронировать',
                      color: Colors.white,
                    ),
                  )
                : Container(),
            Image.asset(
              "img/button-one.png",
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
