import 'package:base_project/resources/app_color.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _mapFunction = {
      "Notifications" : Icons.notifications,
      "Account" : Icons.account_balance,
      "Language": Icons.balance,
      "Terms of Use": Icons.question_answer,
      "Privacy Policy": Icons.privacy_tip,
    };

    var widthCard = MediaQuery.of(context).size.width * 0.4;
    var heightCard = MediaQuery.of(context).size.height * 0.2;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(kDefaultPadding * 1.2),
          child: SizedBox(
            width: double.infinity,
            child: Wrap(
              runSpacing: kDefaultPadding,
              alignment: WrapAlignment.spaceBetween,
              children: [
                for (var key in _mapFunction.keys)
                  Card(
                    elevation: 4,
                    child: SizedBox(
                      width: widthCard,
                      height: heightCard,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            _mapFunction[key],
                            color: kPrimaryColor,
                            size: 50,
                          ),
                          const SizedBox(
                            height: kDefaultPadding,
                          ),
                          Text(
                            key,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
