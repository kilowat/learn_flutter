import 'package:flutter/material.dart';
import 'package:flutter_cubit_app/pages/home_page.dart';
import 'package:flutter_cubit_app/pages/navpages/bar_item_page.dart';
import 'package:flutter_cubit_app/pages/navpages/my_page.dart';
import 'package:flutter_cubit_app/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    const BarItemPage(),
    const SearchPage(),
    const MyPage(),
  ];
  int currentIndex = 0;
  void onTap(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withOpacity(0.3),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(label: "Главная", icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label: "Чарт", icon: Icon(Icons.bar_chart)),
          BottomNavigationBarItem(label: "Поиск", icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: "Моя", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
