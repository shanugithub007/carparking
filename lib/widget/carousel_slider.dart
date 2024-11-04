// widget/carousel_slider.dart
import 'package:car_parking_app/Parking_detail_page/views/parkign-detail-page.dart';import 'package:car_parking_app/Parking_detail_page/views/parkign-detail-page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String location;
  final String time;

  CarouselCard({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.location,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ParkingDetailPage()));
      },
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r), // Responsive radius
          side: BorderSide(
            color: const Color.fromARGB(255, 228, 232, 241),
            width: 2.w, // Responsive width
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.w), // Responsive padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imagePath,
                height: 130.h, // Responsive height
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10.h), // Responsive height
              Text(
                title,
                style: TextStyle(
                  fontSize: 20.sp, // Responsive font size
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.h), // Responsive height
              Text(
                description,
                style: TextStyle(
                  fontSize: 13.sp, // Responsive font size
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 10.h), // Responsive height
              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.red, size: 20.sp), // Responsive icon size
                  SizedBox(width: 5.w), // Responsive width
                  Text(
                    location,
                    style: TextStyle(
                      fontSize: 12.sp, // Responsive font size
                      color: Colors.grey[600],
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.access_time, color: Colors.blue, size: 20.sp), // Responsive icon size
                  SizedBox(width: 5.w), // Responsive width
                  Text(
                    time,
                    style: TextStyle(
                      fontSize: 12.sp, // Responsive font size
                      color: Colors.grey[600],
                    ),
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
