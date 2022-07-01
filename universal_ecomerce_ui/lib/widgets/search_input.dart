import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:universal_ecommerce_ui/common/size_config.dart';
import 'package:universal_ecommerce_ui/import.dart';

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
      height: getProportionWidth(50),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: TextStyle(
                fontSize: getProportionWidth(14),
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: getProportionWidth(20),
                ),
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
                    left: getProportionWidth(20),
                    right: getProportionWidth(10),
                  ),
                  child: Icon(
                    size: getProportionWidth(24),
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
              margin: EdgeInsets.only(left: getProportionWidth(10)),
              height: getProportionWidth(50),
              width: getProportionWidth(50),
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
                onPressed: () {},
                child: SvgPicture.asset(
                  'assets/icons/filter.svg',
                  width: getProportionWidth(24),
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
            )
        ],
      ),
    );
  }
}
