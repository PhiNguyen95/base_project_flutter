import 'package:base_project/pages/login/verification_code.dart';
import 'package:base_project/resources/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../gen/assets.gen.dart';

class PasswordEnter extends StatelessWidget {
  const PasswordEnter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.height * 0.25,
                  child: SvgPicture.asset(Assets.images.appPicture),
                ),
              ),
              Text(
                'Enter your password',
                style: GoogleFonts.openSans(
                    textStyle: Theme.of(context).textTheme.bodyText1),
              ),
              const SizedBox(
                height: kDefaultPadding * 3,
              ),
              TextFormField(
                obscureText: true,
                textInputAction: TextInputAction.next,
                cursorColor: kCarAppPurple,
                decoration: const InputDecoration(
                  hintText: "Password",
                  contentPadding: EdgeInsets.fromLTRB(
                    kDefaultPadding * 2,
                    kDefaultPadding,
                    kDefaultPadding * 2,
                    kDefaultPadding,
                  ),
                ),
              ),
              TextFormField(
                obscureText: true,
                textInputAction: TextInputAction.done,
                cursorColor: kCarAppPurple,
                decoration: const InputDecoration(
                  hintText: "Confirm Password",
                  contentPadding: EdgeInsets.fromLTRB(
                    kDefaultPadding * 2,
                    kDefaultPadding,
                    kDefaultPadding * 2,
                    kDefaultPadding,
                  ),
                ),
              ),
              const SizedBox(
                height: kDefaultPadding * 4,
              ),
              ElevatedButton(
                  onPressed: () {}, child: const Text('Create Account')),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
