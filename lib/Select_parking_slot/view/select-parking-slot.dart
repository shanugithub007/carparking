// Select_parking_slot/view/select-parking-slot.dart
import 'package:car_parking_app/succes_payment/views/succes-payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:car_parking_app/widget/text_filed_widget.dart';

class SelectParkingSlot extends StatelessWidget {
  const SelectParkingSlot({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil
    ScreenUtil.init(
      context,
      designSize: Size(375, 812), // Set this to your design's size-
      minTextAdapt: true,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Favorite Parking Slot",
          style: TextStyle(
            fontSize: 18.sp, // Responsive font size
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            size: 20.sp, // Responsive icon size
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15.w), // Responsive padding
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h), // Responsive height
               
                SizedBox(height: 20.h), // Responsive height
                SizedBox(height: 30.h), // Responsive height
                Text(
                  "Choose Payment Method",
                  style: TextStyle(
                    fontSize: 20.sp, // Responsive font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.h), // Responsive height
                paymentMethodContainer(
                  context,
                  'Google Pay',
                  'assets/images/gpay.jpeg',
                  'Google Pay',
                  'selectedPaymentMethod',
                ),
                SizedBox(height: 10.h), // Responsive height
                paymentMethodContainer(
                  context,
                  'Credit/Debit Cards',
                  'assets/images/debit-card.png',
                  'Credit/Debit Card',
                  'selectedPaymentMethod',
                ),
                SizedBox(height: 10.h), // Responsive height
                paymentMethodContainer(
                  context,
                  'Paypal',
                  'assets/images/paypal.png',
                  'Paypal',
                  'selectedPaymentMethod',
                ),
                SizedBox(height: 10.h), // Responsive height
                paymentMethodContainer(
                  context,
                  'Master Card',
                  'assets/images/mastercard.png',
                  'Master Card',
                  'selectedPaymentMethod',
                ),
                SizedBox(height: 50.h), // Responsive height
                SizedBox(
                  width: 1.sw * 0.9, // Responsive width (90% of screen width)
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SuccessPayment(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                      textStyle: TextStyle(fontSize: 16.sp), // Responsive font size
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r), // Responsive radius
                      ),
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget paymentMethodContainer(BuildContext context, String title, String imagePath, String value, String groupValue) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey, // Border color
          width: 0.5.w, // Responsive border width
        ),
        borderRadius: BorderRadius.circular(8.r), // Responsive radius
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
        child: Row(
          children: [
            SizedBox(
              width: 40.w,
              height: 30.h,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16.sp, // Responsive font size
                ),
              ),
            ),
            Radio(
              value: value,
              groupValue: groupValue,
              onChanged: (value) {
                // Handle payment method selection
              },
            ),
          ],
        ),
      ),
    );
  }
}
