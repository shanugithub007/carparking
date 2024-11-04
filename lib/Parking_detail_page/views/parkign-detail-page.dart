// Parking_detail_page/views/parkign-detail-page.dart
import 'package:car_parking_app/Select_parking_slot/view/select-parking-slot.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widget/hourscounting.dart';

class ParkingDetailPage extends StatefulWidget {
  const ParkingDetailPage({super.key});

  @override
  State<ParkingDetailPage> createState() => _ParkingDetailPageState();
}

class _ParkingDetailPageState extends State<ParkingDetailPage> {
  static const List<String> sampleImages = [
    'https://t4.ftcdn.net/jpg/03/30/78/77/360_F_330787755_RSUhTI7LvN3UUvGWus7t90Sh8yACJ8Lb.jpg',
    'https://thumbs.dreamstime.com/b/underground-parking-cars-white-colors-30872672.jpg',
    'https://assets-prd.raicore.com/-/media/project/rai-amsterdam/intertraffic/news/2022/parkingshape1-550-x-300-px.png?h=300&iar=0&w=550&rev=cb95d922f0984100ba4515d55baca3b0&extension=,webp&hash=643D7E1F1F3FD4BC9C577BEAEC3F7DCD',
    'https://economictimes.indiatimes.com/thumb/height-450,width-600,imgsize-158812,msid-61613749/a-startup-that-promises-hassle-free-parking.jpg?from=mdr'
  ];

  int _selectedValue = 0;

  // Function to calculate total price
  String _calculateTotalPrice() {
    switch (_selectedValue) {
      case 0:
        return "\₹ 40.00";
      case 1:
        return "\₹ 70.00";
      case 2:
        return "\₹ 100.00";
      case 3:
        return "\₹ 200.00";
      case 4:
        return "\₹ 3500.00";
      case 5:
        return "\₹ 6000.00";
      default:
        return "\₹0.00";
    }
  }

  void _onRadioButtonChanged(int newValue) {
    setState(() {
      _selectedValue = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 80.h),
              child: Column(
                children: [
                  FanCarouselImageSlider.sliderType2(
                    imagesLink: sampleImages,
                    isAssets: false,
                    autoPlay: false,
                    sliderHeight: 250.h, // Responsive height
                    currentItemShadow: const [],
                    sliderDuration: const Duration(milliseconds: 200),
                    imageRadius: 0,
                    slideViewportFraction: 1.2,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Cinima Park",
                              style: TextStyle(
                                fontSize: 30.sp, // Responsive font size
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star,
                                    size: 20.w, color: Colors.blue),
                                SizedBox(width: 8.w),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "4.8",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " (365 Reviews)",
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "Resort Street, Cooper Market, 24, 3",
                          style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.access_alarm, size: 20.w),
                                SizedBox(width: 8.w),
                                Text(
                                  "0.5 min",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.drive_eta, size: 20.w),
                                SizedBox(width: 8.w),
                                Text(
                                  "28 Sports",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 30.h),
                        Text(
                          "Hours Counting",
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.withOpacity(0.7),
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          "Please Choose Your Parking Hours",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 20.h),
                        HoursCounting(
                          selectedValue: _selectedValue,
                          onChanged: _onRadioButtonChanged,
                        ),
                        SizedBox(height: 30.h),
                        Text(
                          "Operated By",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                        SizedBox(height: 15.h),
                        Row(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                "assets/images/profile.jpg",
                                width: 50.w,
                                height: 50.h,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 15.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Matthew Perras",
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                    fontSize: 14.sp,
                                  ),
                                ),
                                Text(
                                  "Parking Operator",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10.sp,
                                  ),
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
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(16.w),
              color: const Color.fromARGB(255, 228, 232, 241),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Price',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${_calculateTotalPrice()}',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SelectParkingSlot(),
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: Size(150.w, 50.h),
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
