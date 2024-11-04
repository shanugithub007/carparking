// Favorite_Page/views/favoritesPage.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:car_parking_app/widget/favoriteparkingspot-card.dart';

import '../bloc/favorite_parkingspot_bloc.dart';


class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  // final List<Map<String, dynamic>> Favevalues = [
  //   {
  //     "images": "assets/images/img-1.jpg",
  //     "title": "Cinema Park",
  //     "subtitle": "Resort Street, Cooper \nMarket, 24,3",
  //     "location": "1.5 Km",
  //     "time": "1 Hours",
  //   },
  //   {
  //     "images": "assets/images/img-2.jpg",
  //     "title": "Shopping Park",
  //     "subtitle": "Resort Street, Cooper \nMarket, 24,3",
  //     "location": "2.5 Km",
  //     "time": "1.5 Hours",
  //   },
  //   {
  //     "images": "assets/images/img-3.jpg",
  //     "title": "Market Park",
  //     "subtitle": "Resort Street, Cooper \nMarket, 24,3",
  //     "location": "1.3 Km",
  //     "time": "2 Hours",
  //   },
  //   {
  //     "images": "assets/images/img-4.jpg",
  //     "title": "Home Park",
  //     "subtitle": "Resort Street, Cooper \nMarket, 24,3",
  //     "location": "3.5 Km",
  //     "time": "4 Hours",
  //   },
  //   {
  //     "images": "assets/images/img-5.jpg",
  //     "title": "Private Park",
  //     "subtitle": "Resort Street, Cooper \nMarket, 24,3",
  //     "location": "10.5 Km",
  //     "time": "2.6 Hours",
  //   },
  //   // Add other items as needed
  // ];
  @override
  void initState() {
    // TODO: implement initState
    final favoriteBloc = BlocProvider.of<FavoriteParkingspotBloc>(context);
    favoriteBloc.add(FavoriteParkingspotEvent.favparkingspotlist());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Favorite Parking Spot",
          style: TextStyle(fontSize: 18.sp), // Responsive font size
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, size: 24.w), // Responsive icon size
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w), // Responsive padding
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Search Button
                  SizedBox(
                    width: 1
                        .sw, // Responsive width, adjusted for fitting both buttons
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
                        mainAxisAlignment:
                            MainAxisAlignment.center, // Centers the content
                        children: [
                          Text('Search',
                              style: TextStyle(
                                  fontSize: 16.sp)), // Responsive font size
                          Spacer(), // Pushes the icon to the right
                          Icon(Icons.search,
                              size: 24.w), // Responsive icon size
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w), // Adjust spacing to ensure buttons fit
                  // Filter Button
                ],
              ),
              SizedBox(height: 20.h),
              BlocBuilder<FavoriteParkingspotBloc, FavoriteParkingspotState>(
                builder: (context, state) {
                  return state.when(initial: () {
                    return Container();
                  }, loading: () {
                    return Container();
                  }, error: (Error) {
                    return Container();
                  }, success: (response) {
                    return ListView.builder(
                      itemCount: response.length,
                      shrinkWrap: true, // To prevent unbounded height issue
                      physics:
                          NeverScrollableScrollPhysics(), // Disable scrolling inside the ListView
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            FaveParkingSpotCard(
                              name: response[index].name.toString(),
                              address: response[index].address,
                              endTime: response[index].endTime.toString(),
                              location: response[index].location.toString(),
                              image1: response[index].image1.toString(),
                            ),
                            SizedBox(height: 15.h), // Responsive height
                          ],
                        );
                      },
                    );
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
