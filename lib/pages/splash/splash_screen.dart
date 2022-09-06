import 'package:base_project/pages/introduction/introduction_page.dart';
import 'package:base_project/resources/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:base_project/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHomePage();
  }

  void _navigateToHomePage() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => OnBoardingPage()),);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: <Widget>[
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.images.appPicture),
                const SizedBox(
                  height: kDefaultPadding * 2,
                ),
                Text(
                  'Your number 1 car service.',
                  style: GoogleFonts.openSans(
                      textStyle: Theme
                          .of(context)
                          .textTheme
                          .bodyText1),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
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
