import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:car_parking_app/widget/popularplace_card.dart';

class PopularPlaces extends StatefulWidget {
  const PopularPlaces({super.key});

  @override
  State<PopularPlaces> createState() => _PopularPlacesState();
}

class _PopularPlacesState extends State<PopularPlaces> {
  final List<Map<String, dynamic>> gridvalues = [
    {
      "images": "assets/images/img-1.jpg",
      "title": "Cinima Park",
      "subtitle": "Resort Street, cooper",
      "location": "1.5 Km",
      "time": "1 Hours",
    },
    {
      "images": "assets/images/img-2.jpg",
      "title": "Shopping Mall Spot",
      "subtitle": "Resort Street, cooper",
      "location": "2.5 Km",
      "time": "1.5 Hours",
    },
    {
      "images": "assets/images/img-3.jpg",
      "title": "Market Spot",
      "subtitle": "Resort Street, cooper",
      "location": "1.3 Km",
      "time": "2 Hours",
    },
    {
      "images": "assets/images/img-4.jpg",
      "title": "Home Ground Spot",
      "subtitle": "Resort Street, cooper",
      "location": "3.5 Km",
      "time": "4 Hours",
    },
    {
      "images": "assets/images/img-5.jpg",
      "title": "Private Parking",
      "subtitle": "Resort Street, cooper",
      "location": "10.5 Km",
      "time": "2.6 Hours",
    },
    {
      "images": "assets/images/img-6.jpg",
      "title": "Private Parking",
      "subtitle": "Resort Street, cooper",
      "location": "2.7 Km",
      "time": "2.6 Hours",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Popular Places",
          style: TextStyle(fontSize: 20.sp), // Responsive font size
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            size: 24.sp, // Responsive icon size
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.w), // Responsive padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h), // Responsive height
            Expanded(
              child: GridView.builder(
                itemCount: gridvalues.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w, // Responsive width spacing
                  mainAxisSpacing: 10.h, // Responsive height spacing
                  childAspectRatio: 2 / 2.5,
                ),
                itemBuilder: (context, index) {
                  final item = gridvalues[index];
                  return Productcards(
                    image: item['images'] ?? '',
                    title: item['title'] ?? '',
                    subtitle: item['subtitle'] ?? '',
                    location: item['location'] ?? '', // Pass location
                    time: item['time'] ?? '', // Pass time
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
