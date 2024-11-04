// succes_payment/views/succes-payment.dart
import 'package:car_parking_app/Parking_ticket/views/parking-ticket.dart';import 'package:car_parking_app/Parking_ticket/views/parking-ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessPayment extends StatelessWidget {
  const SuccessPayment({super.key});

  @override
  Widget build(BuildContext context) {
    // Ensure ScreenUtil is initialized
    ScreenUtil.init(context,
        designSize: const Size(360, 690), minTextAdapt: true);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Adjust image size
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.h),
              child: Image.asset(
                "assets/images/payment.jpg",
                width: 220.w, // Responsive width
                height: 220.h, // Responsive height
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 50.h, // Responsive height
            ),
            Text(
              "Successfully Made Payment \n For Your Parking",
              style: TextStyle(
                fontSize: 22.sp, // Responsive font size
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.h), // Responsive height
            SizedBox(
              width: 1.sw, // Responsive width (90% of screen width)
              child: ElevatedButton(
                onPressed: () {
                  // Add functionality here
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ParkingTicket()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  textStyle: TextStyle(fontSize: 16.sp), // Responsive font size
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(5.r), // Responsive radius
                  ),
                ),
                child: Text(
                  'View Parking Ticket',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.h), // Responsive height
            SizedBox(
              width: 1.sw, // Responsive width (90% of screen width)
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  textStyle: TextStyle(fontSize: 16.sp), // Responsive font size
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(5.r), // Responsive radius
                    side: BorderSide(
                        width: 2.w,
                        color: Colors.blue), // Responsive border width
                  ),
                ),
                child: Text(
                  'Cancel',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
