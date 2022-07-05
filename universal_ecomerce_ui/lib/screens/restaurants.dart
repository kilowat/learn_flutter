import 'package:flutter/material.dart';

import '../import.dart';

class RestaurantsScreen extends StatelessWidget {
  const RestaurantsScreen({Key? key}) : super(key: key);
  Route<T> getRoute<T>() {
    return buildRoute<T>(
      '/restaurants',
      builder: (_) => this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Text('Rest'),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          right: kDefaultPadding,
          top: 10,
          left: kDefaultPadding,
        ),
        child: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
