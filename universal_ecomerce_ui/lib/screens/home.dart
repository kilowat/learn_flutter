import 'package:flutter/material.dart';
import 'package:universal_ecommerce_ui/import.dart';
import 'package:universal_ecommerce_ui/screens/home/cart.dart';
import 'package:universal_ecommerce_ui/screens/home/main.dart';
import 'package:universal_ecommerce_ui/screens/home/notify.dart';
import 'package:universal_ecommerce_ui/screens/home/profile.dart';

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
  late final PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          setState(() {
            _selectedMenuIndex = index;
          });
        },
        controller: pageController,
        children: const [
          MainPage(),
          ProfilePage(),
          CartPage(),
          NotifyPage(),
        ],
      ),
      bottomNavigationBar: buildBottomNavigationBar(context),
    );
  }

  void navItemPress(index) {
    setState(
      () {
        _selectedMenuIndex = index;
        pageController.animateToPage(_selectedMenuIndex,
            duration: const Duration(milliseconds: 100), curve: Curves.ease);
      },
    );
  }

  Widget buildBottomNavigationBar(BuildContext context) {
    final items = [
      NavBarItem(
        label: S.of(context).MENU_ITEM_HOME,
        icon: Icons.home,
        isSelected: _selectedMenuIndex == 0,
        press: () {
          navItemPress(0);
        },
      ),
      NavBarItem(
        label: S.of(context).MENU_ITEM_PROFILE,
        icon: Icons.person,
        isSelected: _selectedMenuIndex == 1,
        press: () {
          setState(() {
            navItemPress(1);
          });
        },
      ),
      NavBarItem(
        label: S.of(context).MENU_ITEM_CART,
        icon: Icons.shopping_basket,
        count: 7,
        isSelected: _selectedMenuIndex == 2,
        press: () {
          navItemPress(2);
        },
      ),
      NavBarItem(
        label: S.of(context).MENU_ITEM_NOTIFY,
        icon: Icons.notifications,
        count: 7,
        isSelected: _selectedMenuIndex == 3,
        press: () {
          navItemPress(3);
        },
      )
    ];
    return NavBar(items: items);
  }
}
