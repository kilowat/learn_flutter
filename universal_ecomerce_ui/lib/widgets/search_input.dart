import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../import.dart';

class SearchInput extends StatelessWidget implements PreferredSizeWidget {
  const SearchInput({
    Key? key,
    this.showFilterBtn = true,
  }) : super(key: key);
  final bool showFilterBtn;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: 50,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: const TextStyle(
                fontSize: 14,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(15),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: kSecondaryColor),
                  borderRadius: BorderRadius.circular(15),
                ),
                filled: true,
                isDense: true,
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 10,
                  ),
                  child: Icon(
                    size: 24,
                    Icons.search,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
                hintStyle: TextStyle(
                    color: Theme.of(context)
                        .buttonTheme
                        .colorScheme!
                        .onBackground),
                fillColor:
                    Theme.of(context).buttonTheme.colorScheme!.background,
                hintText: "Search",
              ),
            ),
          ),
          if (showFilterBtn)
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: RoundButton(
                press: () {},
                child: SizedBox(
                  child: SvgPicture.asset(
                    'assets/icons/filter.svg',
                    width: 24,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(ScreenUtil.screenWidth, 50);
}

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key? key,
    required this.press,
    required this.child,
    this.width = 50,
    this.height = 50,
    this.isContrast = false,
  }) : super(key: key);
  final Widget child;
  final VoidCallback press;
  final double width;
  final double height;
  final bool isContrast;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          backgroundColor: isContrast
              ? Theme.of(context).colorScheme.background
              : Theme.of(context).buttonTheme.colorScheme!.background,
        ),
        onPressed: press,
        child: child,
      ),
    );
  }
}
