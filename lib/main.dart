// main.dart
import 'package:car_parking_app/Register_page/bloc/user_register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Favorite_Page/bloc/favorite_parkingspot_bloc.dart';
import 'Login_Page/bloc/user_login_bloc.dart';
import 'intro_page/introduction-page.dart';

// Add your Blocs or Cubits imports here

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Set your design size
      minTextAdapt: true, // Adjust text sizes
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<UserRegisterBloc>(
              create: (context) => UserRegisterBloc()
            ),
          BlocProvider<UserLoginBloc>(
              create: (context) => UserLoginBloc()
            ),
            BlocProvider<FavoriteParkingspotBloc>(
              create: (context) => FavoriteParkingspotBloc()
            ),
          ],
          child: MaterialApp(
            title: 'Flutter Demo',
            home: IntroductionPage(),
          ),
        );
      },
    );
  }
}
