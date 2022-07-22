import 'package:flutter/material.dart';

import '../import.dart';

class MenuDetailScreen extends StatelessWidget {
  const MenuDetailScreen({
    Key? key,
    required this.menu,
  }) : super(key: key);

  final MenuModel menu;

  Route<T> getRoute<T>() {
    return buildRoute<T>(
      '/menu_detail?id=${menu.id}',
      builder: (_) => this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: const BackButtonContrast(),
            leadingWidth: 45 + kDefaultPadding,
            pinned: false,
            bottom: PreferredSize(
              preferredSize: const Size(0, 40),
              child: Container(),
            ),
            expandedHeight: ScreenUtil.screenHeight * 0.5,
            flexibleSpace: ClippedBlock(
              child: Image.asset(
                menu.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: _MenuContent(menu: menu),
          ),
        ],
      ),
    );
  }
}

class _MenuContent extends StatelessWidget {
  const _MenuContent({
    Key? key,
    required this.menu,
  }) : super(key: key);
  final MenuModel menu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: 1000,
      child: Text(menu.title),
    );
  }
}
