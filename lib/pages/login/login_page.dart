import 'package:base_project/pages/login/phone_number_enter.dart';
import 'package:base_project/pages/login/verification_code.dart';
import 'package:base_project/resources/app_color.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../gen/assets.gen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
              TextFormField(
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                cursorColor: kCarAppPurple,
                decoration: const InputDecoration(
                  hintText: "Phone Number",
                  contentPadding: EdgeInsets.fromLTRB(
                    kDefaultPadding * 2,
                    kDefaultPadding,
                    kDefaultPadding * 2,
                    kDefaultPadding,
                  ),
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              TextFormField(
                obscureText: true,
                textInputAction: TextInputAction.done,
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
              const SizedBox(
                height: kDefaultPadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: GoogleFonts.openSans(
                        textStyle: Theme.of(context).textTheme.headline4),
                  ),
                ],
              ),
              const SizedBox(
                height: kDefaultPadding * 3,
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Login')),
              const SizedBox(
                height: kDefaultPadding * 3,
              ),
              RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: 'or ',
                    style: GoogleFonts.openSans(
                        textStyle: Theme.of(context).textTheme.bodyText1),
                  ),
                  TextSpan(
                      text: 'Sign up',
                      style: GoogleFonts.openSans(
                          textStyle: Theme.of(context).textTheme.headline4),
                      recognizer: TapGestureRecognizer()..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return const PhoneNumberEnter();
                            })
                          );
                      })
                ]),
              ),
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
