import 'package:base_project/pages/login/password_enter.dart';
import 'package:base_project/resources/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../gen/assets.gen.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({Key? key}) : super(key: key);

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
                'Enter verification code',
                style: GoogleFonts.openSans(
                    textStyle: Theme.of(context).textTheme.bodyText1),
              ),
              const SizedBox(
                height: kDefaultPadding * 3,
              ),
              PinCodeTextField(
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(kDefaultPadding),
                  inactiveFillColor: Colors.white70,
                  errorBorderColor: kCarAppPurple,
                  selectedColor: kCarAppPurple,
                  selectedFillColor: kCarAppPurple,
                  activeColor: kCarAppPurple,
                  activeFillColor: kCarAppPurple,
                  fieldHeight: 80,
                  fieldWidth: 80,
                ),
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                appContext: context,
                onChanged: (String value) {  },
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: 'Did not receive code? ',
                    style: GoogleFonts.openSans(
                        textStyle: Theme.of(context).textTheme.bodyText1),
                  ),
                  TextSpan(
                    text: 'Resend',
                    style: GoogleFonts.openSans(
                        textStyle: Theme.of(context).textTheme.headline4),
                  )
                ]),
              ),
              const SizedBox(
                height: kDefaultPadding * 3,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const PasswordEnter();
                    }));
                  },
                  child: const Text('Next')),
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
