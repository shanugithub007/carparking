import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ParkingTicket extends StatelessWidget {
  const ParkingTicket({super.key});

  @override
  Widget build(BuildContext context) {
    // Ensure ScreenUtil is initialized
    ScreenUtil.init(context, designSize: Size(375, 812), minTextAdapt: true);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Parking Ticket",
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Make the image responsive
              Image.asset(
                "assets/images/qrcode.png",
                width: 170.w, // Responsive width
                height: 170.h, // Responsive height
              ),
              Padding(
                padding: EdgeInsets.all(15.w), // Responsive padding
                child: Table(
                  border: TableBorder.all(
                    color: Colors.blue,
                    width: 0.5.w, // Responsive border width
                  ),
                  children: [
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12.w), // Responsive padding
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Parking Spot Name',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp, // Responsive font size
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12.w), // Responsive padding
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Cinema Park',
                              style: TextStyle(
                                fontSize: 13.sp, // Responsive font size
                                color: Colors.grey,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12.w), // Responsive padding
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Address',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp, // Responsive font size
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12.w), // Responsive padding
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Resort Street, Cooper Market, 24, 3',
                              style: TextStyle(
                                fontSize: 13.sp, // Responsive font size
                                color: Colors.grey,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12.w), // Responsive padding
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Vehicle Number',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp, // Responsive font size
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12.w), // Responsive padding
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'KL 52 Q 07',
                              style: TextStyle(
                                fontSize: 13.sp, // Responsive font size
                                color: Colors.grey,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12.w), // Responsive padding
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Parking Date',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp, // Responsive font size
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12.w), // Responsive padding
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '15 - 08 - 2024',
                              style: TextStyle(
                                fontSize: 13.sp, // Responsive font size
                                color: Colors.grey,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12.w), // Responsive padding
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Parking Hours',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp, // Responsive font size
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12.w), // Responsive padding
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '3 Hours',
                              style: TextStyle(
                                fontSize: 13.sp, // Responsive font size
                                color: Colors.grey,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12.w), // Responsive padding
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Spot Number',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp, // Responsive font size
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12.w), // Responsive padding
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'BH 25',
                              style: TextStyle(
                                fontSize: 13.sp, // Responsive font size
                                color: Colors.grey,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 20.h), // Responsive height
              // SizedBox(
              //   width: 1.sw * 0.9, // Responsive width (80% of screen width)
              //   child: ElevatedButton(
              //     onPressed: () {},
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: Colors.blue,
              //       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              //       textStyle: TextStyle(fontSize: 16.sp), // Responsive font size
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(5.r), // Responsive radius
              //       ),
              //     ),
              //     child: Text(
              //       'Continue',
              //       style: TextStyle(color: Colors.white),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
