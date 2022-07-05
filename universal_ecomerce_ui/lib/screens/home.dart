import 'package:flutter/material.dart';
import 'package:universal_ecommerce_ui/import.dart';

import 'home/cart.dart';
import 'home/index.dart';
import 'home/notify.dart';
import 'home/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  Route<T> getRoute<T>() {
    return buildRoute<T>(
      '/home',
      builder: (_) => this,
    );
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedMenuIndex = 0;
  late PageController _pageController;
  final pages = const [
    IndexPage(),
    ProfilePage(),
    CartPage(),
    NotifyPage(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: pages[_selectedMenuIndex],
        bottomNavigationBar: buildBottomNavigationBar(context));
  }

  Widget buildBottomNavigationBar(BuildContext context) {
    final items = [
      NavBarItem(
        label: S.of(context).MENU_ITEM_HOME,
        icon: Icons.home,
      ),
      NavBarItem(
        label: S.of(context).MENU_ITEM_PROFILE,
        icon: Icons.person,
      ),
      NavBarItem(
        label: S.of(context).MENU_ITEM_CART,
        icon: Icons.shopping_basket,
        count: 7,
      ),
      NavBarItem(
        label: S.of(context).MENU_ITEM_NOTIFY,
        icon: Icons.notifications,
        count: 7,
      )
    ];
    return NavBar(
      press: (index) {
        setState(() {
          _selectedMenuIndex = index;
        });
      },
      selectedIndex: _selectedMenuIndex,
      items: items,
    );
  }
}
