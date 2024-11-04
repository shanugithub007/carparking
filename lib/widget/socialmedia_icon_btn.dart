import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialMediaIconBtn extends StatelessWidget {
  const SocialMediaIconBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            // Handle Google sign-in
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black, width: 0.7.w), // Responsive border width
              borderRadius: BorderRadius.circular(5.r), // Responsive border radius
            ),
            padding: EdgeInsets.all(10.w), // Responsive padding
          ),
          child: Image.asset(
            'assets/images/google-logo.png',
            height: 20.h, // Responsive height
            width: 20.w,  // Responsive width
          ),
        ),
        SizedBox(width: 10.w), // Responsive spacing
        ElevatedButton(
          onPressed: () {
            // Handle Apple sign-in
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black, width: 0.7.w), // Responsive border width
              borderRadius: BorderRadius.circular(5.r), // Responsive border radius
            ),
            padding: EdgeInsets.all(10.w), // Responsive padding
          ),
          child: Image.asset(
            'assets/images/apple-logo.png',
            height: 20.h, // Responsive height
            width: 20.w,  // Responsive width
          ),
        ),
        SizedBox(width: 10.w), // Responsive spacing
        ElevatedButton(
          onPressed: () {
            // Handle Facebook sign-in
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black, width: 0.7.w), // Responsive border width
              borderRadius: BorderRadius.circular(5.r), // Responsive border radius
            ),
            padding: EdgeInsets.all(10.w), // Responsive padding
          ),
          child: Image.asset(
            'assets/images/fb-logo.png',
            height: 20.h, // Responsive height
            width: 20.w,  // Responsive width
          ),
        ),
      ],
    );
  }
}
