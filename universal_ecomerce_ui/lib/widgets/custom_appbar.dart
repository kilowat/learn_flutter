import 'package:flutter/material.dart';

import '../import.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.title,
  }) : super(key: key);
  String? title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.only(
          right: kDefaultPadding,
          top: 10,
          left: kDefaultPadding,
        ),
        child: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: Row(
            children: [
              RoundButton(
                press: () {
                  navigator.pop();
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: kSecondaryColor,
                ),
              ),
              const Spacer(),
              if (title != null)
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Text(
                    title!,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
