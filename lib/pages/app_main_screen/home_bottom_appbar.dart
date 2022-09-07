import 'package:base_project/pages/app_main_screen/reports_page.dart';
import 'package:base_project/pages/app_main_screen/settings_page.dart';
import 'package:base_project/pages/app_main_screen/wallets_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../gen/assets.gen.dart';
import '../../resources/app_color.dart';
import 'home_screen.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: pageController,
          children: <Widget>[
            MapSample(),
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
                  focusColor: kCarAppPurple,
                  hoverColor: kCarAppPurple,
                  tooltip: 'Home',
                  icon: SvgPicture.asset(Assets.icons.home),
                  onPressed: () {
                    pageController.jumpToPage(0);
                  },
                ),
                IconButton(
                  focusColor: kCarAppPurple,
                  hoverColor: kCarAppPurple,
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
                  focusColor: kCarAppPurple,
                  hoverColor: kCarAppPurple,
                  tooltip: 'Report',
                  icon: SvgPicture.asset(Assets.icons.reports),
                  onPressed: () {
                    pageController.jumpToPage(2);
                  },
                ),
                IconButton(
                  focusColor: kCarAppPurple,
                  hoverColor: kCarAppPurple,
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
          backgroundColor: kCarAppPurple,
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
