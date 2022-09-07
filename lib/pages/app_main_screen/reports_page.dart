import 'package:flutter/material.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Text(
          'Reports',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
