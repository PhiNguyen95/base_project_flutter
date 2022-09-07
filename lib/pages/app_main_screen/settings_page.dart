import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Text(
          'Settings',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );;
  }
}
