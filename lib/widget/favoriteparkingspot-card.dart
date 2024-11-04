// widget/favoriteparkingspot-card.dart
import 'package:car_parking_app/Parking_detail_page/views/parkign-detail-page.dart';
import 'package:car_parking_app/Parking_detail_page/views/parkign-detail-page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FaveParkingSpotCard extends StatefulWidget {
  final String name;
  final String image1;
  final String location;
  final String endTime;
  const FaveParkingSpotCard({
    super.key,
    required this.location,
    required address,
    required this.image1,
    required this.name,
    required this.endTime,
  });

  @override
  State<FaveParkingSpotCard> createState() => _FaveParkingSpotCardState();
}

class _FaveParkingSpotCardState extends State<FaveParkingSpotCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ParkingDetailPage()));
      },
      child: Card(
        color: Colors.white,
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          side:
              BorderSide(color: Colors.blue, width: 1.0.w), // Responsive width
          borderRadius: BorderRadius.circular(12.r), // Responsive border radius
        ),
        child: Padding(
          padding: EdgeInsets.all(20.w), // Responsive padding
          child: Row(
            children: [
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(8.r), // Responsive border radius
                child: Image.asset(
                  widget.image1,
                  width: 100.w, // Responsive width
                  height: 120.h, // Responsive height
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 16.w), // Responsive spacing
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.name,
                          style: TextStyle(
                            fontSize: 18.sp, // Responsive font size
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.favorite_border,
                              color: Colors.blue,
                              size: 24.sp), // Responsive icon size
                          onPressed: () {
                            // Add your favorite button action here
                          },
                          tooltip: 'Favorite',
                        ),
                      ],
                    ),
                    // Text(
                    //   widget.subtitle,
                    //   style: TextStyle(
                    //       fontSize: 14.sp,
                    //       color: Colors.grey), // Responsive font size
                    // ),
                    // SizedBox(height: 10.h), // Responsive spacing
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on,
                                color: Colors.blue,
                                size: 16.sp), // Responsive icon size
                            SizedBox(width: 4.w), // Responsive spacing
                            Text(
                              widget.location,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.grey), // Responsive font size
                            ),
                          ],
                        ),
                        SizedBox(width: 12.w), // Responsive spacing
                        Row(
                          children: [
                            Icon(Icons.access_time,
                                color: Colors.blue,
                                size: 16.sp), // Responsive icon size
                            SizedBox(width: 4.w), // Responsive spacing
                            Text(
                              widget.endTime,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.grey), // Responsive font size
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
