import 'package:base_project/gen/assets.gen.dart';
import 'package:base_project/pages/app_main_screen/home_screen.dart';
import 'package:base_project/pages/app_main_screen/reports_page.dart';
import 'package:base_project/pages/app_main_screen/settings_page.dart';
import 'package:base_project/pages/app_main_screen/wallets_page.dart';
import 'package:base_project/resources/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.icons.reports),
              label: 'Reports',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.icons.wallets),
              label: 'Wallets',
            ),
          ],
          onTap: _onTappedBar,
          selectedItemColor: kCarAppPurple,
          currentIndex: _selectedIndex,
        ),
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: kCarAppPurple,
          child: Transform.rotate(
            angle: (45 * (3.1415927 / 180)),
            child: const Icon(Icons.navigation),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: PageView(
          controller: _pageController,
          children: <Widget>[
            MapSample(),
            ReportsPage(),
            SettingsPage(),
            WalletsPage(),
          ],
          onPageChanged: (page) {
            setState(() {
              _selectedIndex = page;
            });
          },
        ),
      ),
    );
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}
