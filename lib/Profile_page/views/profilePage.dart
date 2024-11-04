// Profile_page/views/profilePage.dart
import 'package:car_parking_app/widget/text_filed_widget.dart';
import 'package:car_parking_app/widget/text_filed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/profilewidget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil
    ScreenUtil.init(
      context,
      designSize: Size(375, 812), // Set this to your design's size
      minTextAdapt: true,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.sp, // Responsive font size
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile image
              CircleAvatar(
                radius: 50.w, // Responsive radius
                backgroundImage: AssetImage("assets/images/profile.jpg"),
              ),
              SizedBox(height: 16.h), // Responsive height
              Text(
                "Matthew Perras", // Replace with actual name or data
                style: TextStyle(
                  fontSize: 22.sp, // Responsive font size
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 20.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize:
                          12.sp, // Use ScreenUtil for responsive font size
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: TextFiledWidget(
                      labelText: 'Matthew Perras',
                      suffix: Icon(Icons.person, size: 24.sp),
                      obscureText: false,
                    ),
                  ), // Use ScreenUtil for responsive height
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize:
                          12.sp, // Use ScreenUtil for responsive font size
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ), // Use ScreenUtil for responsive height
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: TextFiledWidget(
                      labelText: 'MatthewPerras@gmail.com',
                      suffix: Icon(Icons.email_outlined, size: 24.sp),
                      obscureText: false,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Phone Number",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize:
                          12.sp, // Use ScreenUtil for responsive font size
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ), // Use ScreenUtil for responsive height
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: TextFiledWidget(
                      labelText: '9846680036',
                      suffix: Icon(Icons.phone_android, size: 24.sp),
                      obscureText: false,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Car Model",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize:
                          12.sp, // Use ScreenUtil for responsive font size
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ), // Use ScreenUtil for responsive height
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: TextFiledWidget(
                      labelText: 'BMW Q7',
                      suffix: Icon(Icons.directions_car, size: 24.sp),
                      obscureText: false,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Vehical Number",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize:
                          12.sp, // Use ScreenUtil for responsive font size
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ), // Use ScreenUtil for responsive height
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: TextFiledWidget(
                      labelText: 'KL 52 Q 2596',
                      suffix: Icon(Icons.directions_car, size: 24.sp),
                      obscureText: false,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
