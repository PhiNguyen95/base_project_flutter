import 'package:base_project/pages/login/login_page/login_page.dart';
import 'package:base_project/resources/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../../gen/assets.gen.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const LoginPage()),
    );
  }

  Widget _buildImage(String assetName) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      child: SvgPicture.asset(
        assetName,
        fit: BoxFit.fill,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 26.0,
        fontWeight: FontWeight.w700,
        color: kColorBlackText,
        fontFamily: 'OpenSans',
      ),
      bodyTextStyle: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        color: kColorGrey,
        fontFamily: 'OpenSans',
      ),
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: _buildImage('flutter.png'),
          ),
        ),
      ),

      pages: [
        PageViewModel(
          title: "Best Car Repair Service",
          body:
              "Provided quality service with reasonable price and thousands of car service shop in most of the city.",
          image: _buildImage(Assets.images.onboardingScreen1),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Quick Navigation",
          body:
              "Search directly on the app to find your nearest car service shop with in 10 km.",
          image: _buildImage(Assets.images.onboardingScreen2),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Easy Payment",
          body:
              "Accepted mostly all the payment methods such as cash, visa, app payment.",
          image: _buildImage(Assets.images.onboardingScreen3),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
