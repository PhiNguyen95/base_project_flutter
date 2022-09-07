import 'package:flutter/material.dart';

class WalletsPage extends StatelessWidget {
  const WalletsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Text(
          'Wallets',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );;
  }
}
