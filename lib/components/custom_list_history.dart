import 'package:base_project/resources/app_color.dart';
import 'package:flutter/material.dart';

class CustomListHistory extends StatelessWidget {
  const CustomListHistory({
    Key? key,
    required this.icon,
    required this.dateOrder,
    required this.timeOrder,
    required this.price,
    required this.placeOrder,
  }) : super(key: key);
  final Icon icon;
  final String dateOrder;
  final String timeOrder;
  final String price;
  final String placeOrder;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(kDefaultPadding),
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                icon,
                const Spacer(),
                Text(
                  placeOrder,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  dateOrder,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      timeOrder,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
                Text(
                  price,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
