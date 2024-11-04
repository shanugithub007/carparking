// Login_Page/views/login_page.dart
import 'package:car_parking_app/Register_page/views/register-page.dart';
import 'package:car_parking_app/Register_page/views/register-page.dart';
import 'package:car_parking_app/widget/bottomnavigation-bar.dart';
import 'package:car_parking_app/widget/socialmedia_icon_btn.dart';
import 'package:car_parking_app/widget/text_filed_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../bloc/user_login_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

TextEditingController usernamecontroller = TextEditingController();
TextEditingController passcontroller = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  bool _isSecurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 50.h, left: 12.w, right: 12.w),
            child: BlocListener<UserLoginBloc, UserLoginState>(
              listener: (context, state) {
                state.when(
                    initial: () {
                      return Container();
                    },
                    loading: () {
                      return Container();
                    },
                    error: (error) {
                      return Container();
                    },
                    success: (response) {
                       {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CustomBottomNavigationBar()));
                            SnackBar(content: Text("Login Successfully"));
                       }
                    },
                  );
              },
              child: Column(
                children: [
                  SizedBox(
                      height: 180.h,
                      child: Image.asset("assets/images/login-img.jpg")),
                  TextFiledWidget(
                    labelText: 'User Name',
                    suffix: Icon(Icons.person, size: 24.sp),
                    obscureText: false,
                    controller: usernamecontroller,
                  ),
                  SizedBox(height: 20.h),
                  TextFiledWidget(
                    labelText: 'Password',
                    suffix: togglePassword(),
                    obscureText: _isSecurePassword,
                    controller: passcontroller,
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          print("Forgot Password tapped!");
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: 1.sw, // 1.sw is equivalent to screen width
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => CustomBottomNavigationBar()));
                        final userregbloc =
                            BlocProvider.of<UserLoginBloc>(context);
                        userregbloc.add(UserLoginEvent.userLogin(
                          password: passcontroller.text,
                          usernames: usernamecontroller.text,
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 20.h),
                        textStyle: TextStyle(fontSize: 16.sp),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                      ),
                      child: Text(
                        'Log In',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    "OR",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15.h),
                  SocialMediaIconBtn(),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Don't have an account ?",
                          style:
                              TextStyle(color: Colors.black, fontSize: 14.sp)),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => RegistrationPage()));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          _isSecurePassword = !_isSecurePassword;
        });
      },
      icon: _isSecurePassword
          ? Icon(Icons.visibility, size: 24.sp)
          : Icon(Icons.visibility_off, size: 24.sp),
      color: Colors.black,
    );
  }
}
