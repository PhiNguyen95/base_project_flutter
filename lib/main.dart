import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:base_project/pages/splash/splash_screen.dart';
import 'package:base_project/resources/app_color.dart';
import 'package:base_project/resources/app_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car SOS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TEXT_THEME_DEFAULT,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: kCarAppPurple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            textStyle: GoogleFonts.openSans(
              textStyle: Theme.of(context).textTheme.bodyText2,
            ),
            maximumSize: const Size(double.infinity, 56),
            minimumSize: const Size(double.infinity, 56),
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
