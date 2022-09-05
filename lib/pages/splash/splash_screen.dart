import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:base_project/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: <Widget>[
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.images.appPicture),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Your number 1 car service.',
                  style: GoogleFonts.openSans(
                      textStyle: Theme.of(context).textTheme.bodyText2),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: SvgPicture.asset(
                Assets.images.splashScreenPicture,
                fit: BoxFit.fill,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
