// widget/popularplace_card.dart
import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:car_parking_app/Parking_detail_page/views/parkign-detail-page.dart';

class Productcards extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;
  final String location; // New parameter
  final String time;     // New parameter

  const Productcards({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.location, // Required for location
    required this.time,     // Required for time
  }) : super(key: key);

  @override
  State<Productcards> createState() => _ProductcardsState();
}

class _ProductcardsState extends State<Productcards> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ParkingDetailPage()));
      },
      child: Container(
        width: ScreenUtil().setWidth(360), // Responsive width
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 0.5.w, color: Colors.grey), // Responsive border width
          borderRadius: BorderRadius.circular(10.r), // Responsive border radius
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3.w, // Responsive spread radius
              blurRadius: 10.w, // Responsive blur radius
              offset: Offset(0, 3.h), // Responsive offset
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(5.w), // Responsive padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              Image.asset(
                widget.image,
                fit: BoxFit.cover,
                height: ScreenUtil().setWidth(120), // Responsive height
                width: double.infinity,
              ),
              SizedBox(height: 8.h), // Responsive height
              // Title
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 16.sp, // Responsive font size
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.h), // Responsive height
              // Subtitle
              Text(
                widget.subtitle,
                style: TextStyle(
                  fontSize: 12.sp, // Responsive font size
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 8.h), // Responsive height
              // Row with Location and Time icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on, size: 16.sp, color: Colors.blue), // Responsive icon size
                      SizedBox(width: 4.w), // Responsive width
                      Text(
                        widget.location, // Display location
                        style: TextStyle(
                          fontSize: 12.sp, // Responsive font size
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time, size: 16.sp, color: Colors.orange), // Responsive icon size
                      SizedBox(width: 4.w), // Responsive width
                      Text(
                        widget.time, // Display time
                        style: TextStyle(
                          fontSize: 12.sp, // Responsive font size
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
