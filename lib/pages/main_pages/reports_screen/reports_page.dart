import 'package:base_project/components/custom_list_history.dart';
import 'package:base_project/resources/app_color.dart';
import 'package:flutter/material.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: kDefaultPadding),
              Text(
                "Active Session",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const CustomListHistory(
                icon: Icon(
                  Icons.sticky_note_2,
                  color: kPrimaryColor,
                ),
                dateOrder: "02/09/2019",
                placeOrder: "LandMark Car Park B",
                price: "\$100",
                timeOrder: "02:00pm",
              ),
              Text(
                "Completed Session",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const CustomListHistory(
                icon: Icon(
                  Icons.sticky_note_2,
                  color: kPrimaryColor,
                ),
                dateOrder: "02/09/2019",
                placeOrder: "LandMark Car Park B",
                price: "\$100",
                timeOrder: "02:00pm",
              ),
              const CustomListHistory(
                icon: Icon(
                  Icons.sticky_note_2,
                  color: kPrimaryColor,
                ),
                dateOrder: "02/09/2019",
                placeOrder: "LandMark Car Park B",
                price: "\$100",
                timeOrder: "02:00pm",
              ),
              Text(
                "Reserved Spots",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const CustomListHistory(
                icon: Icon(
                  Icons.sticky_note_2,
                  color: kPrimaryColor,
                ),
                dateOrder: "02/09/2019",
                placeOrder: "LandMark Car Park B",
                price: "\$100",
                timeOrder: "02:00pm",
              ),
              const CustomListHistory(
                icon: Icon(
                  Icons.sticky_note_2,
                  color: kPrimaryColor,
                ),
                dateOrder: "02/09/2019",
                placeOrder: "LandMark Car Park B",
                price: "\$100",
                timeOrder: "02:00pm",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
