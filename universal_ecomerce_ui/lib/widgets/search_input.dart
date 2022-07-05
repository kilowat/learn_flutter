import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../import.dart';

class SearchInput extends StatelessWidget {
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
              style: TextStyle(
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
                  padding: EdgeInsets.only(
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
}

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key? key,
    required this.press,
    required this.child,
  }) : super(key: key);
  final Widget child;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          backgroundColor:
              Theme.of(context).buttonTheme.colorScheme!.background,
        ),
        onPressed: press,
        child: child,
      ),
    );
  }
}
