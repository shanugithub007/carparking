// Register_page/views/register-page.dart
import 'package:car_parking_app/Login_Page/views/login_page.dart';
import 'package:car_parking_app/Register_page/bloc/user_register_bloc.dart';
import 'package:car_parking_app/widget/imagepicker.dart';
import 'package:car_parking_app/widget/text_filed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

TextEditingController namecontroller = TextEditingController();
TextEditingController emailcontroller = TextEditingController();
TextEditingController phncontroller = TextEditingController();
TextEditingController passcontroller = TextEditingController();
TextEditingController usernamecontroller = TextEditingController();
// TextEditingController vehiclenocontroller = TextEditingController();

class _RegistrationPageState extends State<RegistrationPage> {
  bool _isSecurePassword = true;

  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil
    ScreenUtil.init(
      context,
      designSize: Size(375, 812), // Set this to your design's size
      minTextAdapt: true,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 20.h),
              child: BlocListener<UserRegisterBloc, UserRegisterState>(
                listener: (context, state) {
                  state.when(
                    initial: () {
                      return Container();
                    },
                    loading: () {
                       return Center(
                          child: SpinKitRotatingCircle(
                            color: Colors.blue,
                            size: 50.0,
                          ),
                        );
                    },
                    error: (error) {
                      return Container();
                    },
                    success: (response) {
                      if (response.status == 'success') {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginPage()));
                            SnackBar(content: Text("Registion Successfully"));
                      } else {
                        // hhj
                      }
                    },
                  );
                },
                child: Column(
                  children: [
                    Text(
                      "Complete Your Profile",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.sp, // Responsive font size
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5.h), // Responsive height
                    Text(
                      "Available parking zones are suggested automatically, based on your location.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.sp, // Responsive font size
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 20.h), // Responsive height
                    ImagePickerWidget(),
                    SizedBox(height: 20.h), // Responsive height
                    TextFiledWidget(
                      labelText: 'Name',
                      suffix: Icon(Icons.person,
                          size: 20.sp), // Responsive icon size
                      obscureText: false,
                      controller: namecontroller,
                    ),
                    SizedBox(height: 20.h), // Responsive height
                    TextFiledWidget(
                      labelText: 'User Name',
                      suffix: Icon(Icons.person,
                          size: 20.sp), // Responsive icon size
                      obscureText: false,
                      controller: usernamecontroller,
                    ),
                    SizedBox(height: 20.h), // Responsive height
                    TextFiledWidget(
                      labelText: 'Email',
                      suffix: Icon(Icons.mail, size: 20.sp),
                      obscureText: false,
                      controller: emailcontroller,
                    ),
                    SizedBox(height: 20.h),
                    TextFiledWidget(
                      labelText: 'Password',
                      suffix: togglePassword(),
                      obscureText: _isSecurePassword,
                      controller: passcontroller,
                    ),
                    SizedBox(height: 20.h), // Responsive height
                    TextFiledWidget(
                      labelText: 'Phone Number',
                      suffix: Icon(Icons.phone,
                          size: 20.sp), // Responsive icon size
                      obscureText: false,
                      controller: phncontroller,
                    ),
                    // SizedBox(
                    //   height: 60, // Responsive height
                    //   child: TextFiledWidget(
                    //     labelText: 'Car Model',
                    //     obscureText: false,
                    //     controller: carmodelcontroller,
                    //     dropdownItems: [
                    //       'Maruti Swift',
                    //       'MG Hector',
                    //       'Maruti Ertiga',
                    //       'Audi Q7',
                    //       'Tata Punch',
                    //       'Mahindra Thar',
                    //       'Toyota Innova Crysta',
                    //       'Porsche',
                    //       'Volkswagen',
                    //       'Ford Mustang',
                    //       'Jeep',
                    //       'Lexus',
                    //       'Škoda',
                    //       'Mahindra Scorpio'
                    //     ],
                    //     dropdownValue:
                    //         'Maruti Swift', // Ensure this value is in the dropdownItems
                    //     backgroundColor: Colors.white,
                    //   ),
                    // ),
                    SizedBox(height: 20.h), // Responsive height
                    // TextFiledWidget(
                    //   labelText: 'Vehicle Number',
                    //   suffix:
                    //       Icon(Icons.directions_car, size: 20.sp), // Responsive icon size
                    //   obscureText: false,
                    //   controller: vehiclenocontroller,
                    // ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            // Handle the "Forgot Password?" tap here
                            print("Forgot Password tapped!");
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp, // Responsive font size
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h), // Responsive height
                    SizedBox(
                      width:
                          1.sw * 0.8, // Responsive width (80% of screen width)
                      child: ElevatedButton(
                        onPressed: () {
                          final userregbloc =
                              BlocProvider.of<UserRegisterBloc>(context);
                          userregbloc.add(UserRegisterEvent.userRegi(
                            // imagefile: "",
                            name: namecontroller.text,
                            email: emailcontroller.text,
                            phnnumber: phncontroller.text,
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
                            borderRadius:
                                BorderRadius.circular(5.r), // Responsive radius
                          ),
                        ),
                        child: Text(
                          'Complete Profile',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
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
          ? Icon(Icons.visibility, size: 20.sp) // Responsive icon size
          : Icon(Icons.visibility_off, size: 20.sp), // Responsive icon size
      color: Colors.black,
    );
  }
}
