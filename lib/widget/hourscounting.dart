import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HoursCounting extends StatelessWidget {
  final int selectedValue;
  final ValueChanged<int> onChanged;

  const HoursCounting({
    Key? key,
    required this.selectedValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildRadioOption(0, "One Hour", "\₹40.00"),
            SizedBox(width: 10.w),
            _buildRadioOption(1, "Two Hours", "\₹70.00"),
          ],
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildRadioOption(2, "Three hours", "\₹100.00"),
            SizedBox(width: 10.w),
            _buildRadioOption(3, "One Day", "\₹200.00"),
          ],
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildRadioOption(4, "One Month", "\₹3500.00"),
            SizedBox(width: 10.w),
            _buildRadioOption(5, "Two Month", "\₹6000.00"),
          ],
        ),
      ],
    );
  }

  Widget _buildRadioOption(int value, String title, String price) {
    return Container(
      width: 160.w,
      padding: EdgeInsets.all(2.w), // Adding padding inside the container
      decoration: BoxDecoration(
        border: Border.all(width: 1.5, color: Colors.grey),
        borderRadius: BorderRadius.circular(10.w),
      ),
      child: Row(
        children: [
          Radio<int>(
            value: value,
            groupValue: selectedValue,
            activeColor: Colors.blue,
            onChanged: (int? newValue) {
              if (newValue != null) {
                onChanged(newValue);
              }
            },
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                price,
                style: TextStyle(
                  fontSize: 11.sp,
                  color: Colors.blue[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
