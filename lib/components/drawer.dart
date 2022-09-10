import 'package:base_project/gen/assets.gen.dart';
import 'package:base_project/pages/app_main_screen/home_screen.dart';
import 'package:base_project/pages/app_main_screen/reports_page.dart';
import 'package:base_project/pages/app_main_screen/settings_page.dart';
import 'package:base_project/pages/app_main_screen/wallets_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('CAR SOS MENU'),
        ),
        ListTile(
          title: const Text('Home'),
          trailing: SvgPicture.asset(Assets.icons.home),
          onTap: () {
            // Update the state of the app
            // ...
            Navigator.pop(context);
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MapSample()));
            // Then close the drawer
          },
        ),

        ListTile(
          title: const Text('Reports'),
          trailing: SvgPicture.asset(Assets.icons.reports),
          onTap: () {
            // Update the state of the app
            // ...
            Navigator.pop(context);
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ReportsPage()));
            // Then close the drawer
          },
        ),

        ListTile(
          title: const Text('Wallets'),
          trailing: SvgPicture.asset(Assets.icons.wallets),
          onTap: () {
            // Update the state of the app
            // ...
            Navigator.pop(context);
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => WalletsPage()));
            // Then close the drawer
          },
        ),

        ListTile(
          title: const Text('Settings'),
          trailing: SvgPicture.asset(Assets.icons.settings),
          onTap: () {
            // Update the state of the app
            // ...
            Navigator.pop(context);
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SettingsPage()));
            // Then close the drawer
          },
        ),
      ],
    ));
  }
}
