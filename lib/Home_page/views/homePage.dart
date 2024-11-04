// Home_page/views/homePage.dart
import 'package:car_parking_app/Popular_places/view/popular-places.dart';
import 'package:car_parking_app/widget/carousel_slider.dart';
import 'package:car_parking_app/widget/text_filed_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Map<String, String>> items = [
    {
      'imagePath': 'assets/images/img-5.jpg',
      'title': 'Cinima Park',
      'description': 'Resort Street, Cooper,Market,24.3',
      'location': '1.9 Km',
      'time': '12:00 PM',
    },
    {
      'imagePath': 'assets/images/img-6.jpg',
      'title': 'Shopping Mall',
      'description': 'Resort Street, Cooper,Market,24.3',
      'location': '2.5 Km',
      'time': '1:00 PM',
    },
    {
      'imagePath': 'assets/images/img-6.jpg',
      'title': 'Private Parking',
      'description': 'Resort Street, Cooper,Market,24.3',
      'location': '10.2 Km',
      'time': '10:00 PM',
    },
    {
      'imagePath': 'assets/images/img-6.jpg',
      'title': 'Pay Mall',
      'description': 'Resort Street, Cooper,Market,24.3',
      'location': '3.5 Km',
      'time': '8:00 PM',
    },
    // Add more items here
  ];

  final List<String> imgList = [
    'assets/images/banner.jpeg',
    'assets/images/banner2.jpg',
    'assets/images/banner.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 40.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Location",
                    style: TextStyle(
                      fontSize: 25.sp, // Responsive font size
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.circle_notifications,
                    size: 35.sp, // Responsive icon size
                    color: Colors.blue,
                  ),
                ],
              ),
              SizedBox(
                height: 25.h, // Responsive height
              ),
              SizedBox(
                width: 1.sw, // Responsive width
                height: 60.h, // Responsive height
                child: ElevatedButton(
                  onPressed: () {
                    // Add your search action here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(12.r), // Responsive radius
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Search'),
                      Spacer(),
                      Icon(Icons.search),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h, // Responsive height
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 200.h,
                  autoPlay: true,
                  enlargeCenterPage:
                      false, // Disable enlarging center image to ensure consistent width
                  viewportFraction:
                      1.0, // Each item will take the full width of the carousel
                  onPageChanged: (index, reason) {
                    // Handle page change if needed
                  },
                ),
                items: imgList
                    .map((item) => Container(
                          width: double.infinity, // Set full width to container
                          margin: EdgeInsets.symmetric(
                              horizontal: 0), // Remove horizontal margin
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.r),
                            image: DecorationImage(
                              image: AssetImage(item),
                              fit: BoxFit
                                  .contain, // Ensure the image covers the entire container
                            ),
                          ),
                        ))
                    .toList(),
              ),

              // SizedBox(
              //   height: 60.h, // Responsive height
              //   child: TextFiledWidget(
              //     labelText: 'Arrive Time',
              //     obscureText: false,
              //     dropdownItems: [
              //       'Arrive Before Today 9:20pm',
              //       'Arrive Before Today 10:45am',
              //     ],
              //     dropdownValue: '', // Ensure this value is in the dropdownItems
              //     backgroundColor: Colors.white,
              //   ),
              // ),
              // SizedBox(
              //   height: 10.h, // Responsive height
              // ),
              // SizedBox(
              //   height: 60.h, // Responsive height
              //   child: TextFiledWidget(
              //     labelText: 'Exit Time',
              //     obscureText: false,
              //     dropdownItems: [
              //       'Exit Before Today 11:00pm',
              //       'Exit Before Today 8:25am',
              //     ],
              //     dropdownValue: '', // Ensure this value is in the dropdownItems
              //     backgroundColor: Colors.white,
              //   ),
              // ),
              // SizedBox(
              //   height: 40.h, // Responsive height
              // ),
              // SizedBox(
              //   width: 1.sw, // Responsive width
              //   child: ElevatedButton(
              //     onPressed: () {},
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: Colors.blue,
              //       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h), // Responsive padding
              //       textStyle: TextStyle(fontSize: 16.sp), // Responsive font size
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(5.r), // Responsive radius
              //       ),
              //     ),
              //     child: Text(
              //       'Find Parking',
              //       style: TextStyle(
              //           color: Colors.white, fontWeight: FontWeight.bold),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 10.h, // Responsive height
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Places",
                    style: TextStyle(
                      fontSize: 25.sp, // Responsive font size
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PopularPlaces()));
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 15.sp, // Responsive font size
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h, // Responsive height
              ),
              SizedBox(
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 270.h, // Responsive height
                    autoPlay: false,
                    autoPlayInterval: Duration(seconds: 10),
                  ),
                  items: items.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return CarouselCard(
                          imagePath: i['imagePath'] ?? '',
                          title: i['title'] ?? '',
                          description: i['description'] ?? '',
                          location: i['location'] ?? '',
                          time: i['time'] ?? '',
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 10.h) // Responsive height
            ],
          ),
        ),
      ),
    );
  }
}
