import 'package:base_project/components/custom_drawer.dart';
import 'package:base_project/pages/main_pages/reports_screen/reports_page.dart';
import 'package:base_project/pages/main_pages/settings_screen/settings_page.dart';
import 'package:base_project/pages/main_pages/wallets_screen/wallets_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../gen/assets.gen.dart';
import '../../resources/app_color.dart';
import 'map_screen/home_screen.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Car SOS'),
        ),
        drawer: const CustomDrawer(),
        body: PageView(
          controller: pageController,
          children: <Widget>[
            HomeScreen(),
            WalletsPage(),
            ReportsPage(),
            SettingsPage(),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          // this creates a notch in the center of the bottom bar
          shape: const CircularNotchedRectangle(),
          notchMargin: 6,
          child: Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding * 2),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  focusColor: kColorPurple,
                  hoverColor: kColorPurple,
                  tooltip: 'Home',
                  icon: SvgPicture.asset(Assets.icons.home),
                  onPressed: () {
                    pageController.jumpToPage(0);
                  },
                ),
                IconButton(
                  focusColor: kColorPurple,
                  hoverColor: kColorPurple,
                  tooltip: 'Wallet',
                  icon: SvgPicture.asset(Assets.icons.wallets),
                  onPressed: () {
                    pageController.jumpToPage(1);
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  focusColor: kColorPurple,
                  hoverColor: kColorPurple,
                  tooltip: 'Report',
                  icon: SvgPicture.asset(Assets.icons.reports),
                  onPressed: () {
                    pageController.jumpToPage(2);
                  },
                ),
                IconButton(
                  focusColor: kColorPurple,
                  hoverColor: kColorPurple,
                  icon: SvgPicture.asset(Assets.icons.settings),
                  onPressed: () {
                    pageController.jumpToPage(3);
                  },
                ),
              ],
            ),
          ),
        ),
        // implement the floating button
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: kColorPurple,
          child: Transform.rotate(
            angle: (45 * (3.1415927 / 180)),
            child: const Icon(Icons.navigation),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
