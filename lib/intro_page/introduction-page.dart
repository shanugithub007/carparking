// pages/introduction-page.dart
import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:car_parking_app/Login_Page/views/login_page.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // IntroductionScreen
          IntroductionScreen(
            globalBackgroundColor: Colors.transparent,
            scrollPhysics: BouncingScrollPhysics(),
            pages: [
              PageViewModel(
                titleWidget: Text(
                  "Find a Parking Slot",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35.sp, // Responsive font size
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                body: "A car parking app development addresses one of the most common headaches in urban traffic.",
                image: Image.asset("assets/images/intro-img-2.png"),
              ),
              PageViewModel(
                titleWidget: Text(
                  "Find a Parking Slot",
                  style: TextStyle(
                    fontSize: 30.sp, // Responsive font size
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                body: "A car parking app development addresses one of the most common headaches in urban traffic.",
                image: Image.asset("assets/images/intro-img-1.png"),
              ),
              PageViewModel(
                titleWidget: Text(
                  "Find a Parking Slot",
                  style: TextStyle(
                    fontSize: 30.sp, // Responsive font size
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                body: "A car parking app development addresses one of the most common headaches in urban traffic.",
                image: Image.asset("assets/images/intro-img-2.png"),
              ),
            ],
            onDone: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
            onSkip: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
            showSkipButton: true,
            skip: Text(
              "Skip",
              style: TextStyle(
                fontSize: 18.sp, // Responsive font size
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            next: Icon(
              Icons.arrow_forward,
              color: Colors.black,
              size: 24.sp, // Responsive icon size
            ),
            done: Text(
              "Done",
              style: TextStyle(
                fontSize: 18.sp, // Responsive font size
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            dotsDecorator: DotsDecorator(
              size: Size.square(10.0.w), // Responsive size
              activeSize: Size(20.0.w, 10.0.h), // Responsive size
              color: Colors.black,
              activeColor: Colors.blue,
              spacing: EdgeInsets.symmetric(horizontal: 3.0.w), // Responsive spacing
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0.w), // Responsive border radius
              ),
            ),
          ),
        ],
      ),
    );
  }
}
