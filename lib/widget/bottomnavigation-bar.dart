// widget/bottomnavigation-bar.dart
import 'package:car_parking_app/Favorite_Page/views/favoritesPage.dart';
import 'package:car_parking_app/Home_page/views/homePage.dart';
import 'package:car_parking_app/Location_Page/views/locationPage.dart';
import 'package:car_parking_app/Profile_page/views/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Homepage(),
    LocationPage(),
    FavoritesPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 228, 232, 241),
        child: SizedBox(
          height: 70.h, // Responsive height
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(Icons.home, 0),
              _buildNavItem(Icons.location_on, 1),
              _buildNavItem(Icons.favorite_border, 2),
              _buildNavItem(Icons.person, 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    final isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Container(
        padding: EdgeInsets.all(10.w), // Responsive padding
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(8.r), // Responsive border radius
        ),
        child: Icon(
          icon,
          color: isSelected ? Colors.white : Colors.blue,
          size: 24.sp, // Responsive icon size
        ),
      ),
    );
  }
}
