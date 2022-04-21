import 'package:flutter/material.dart';
import 'package:medilitics/screens/basic_profile_page.dart';
import 'package:medilitics/screens/login_page.dart';
import 'package:medilitics/screens/new_password_screen.dart';
import 'package:medilitics/screens/onboardingPage.dart';
import 'package:medilitics/screens/profession_details2.dart';
import 'package:medilitics/screens/professional_details1.dart';
import 'package:medilitics/screens/reset_password_page.dart';
import 'package:medilitics/screens/schedule_screen.dart';
import 'package:medilitics/screens/sign_up_page.dart';
import 'package:medilitics/screens/verified_page.dart';
import 'package:medilitics/screens/view_page.dart';
import 'package:medilitics/screens/welcome_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context) =>MaterialApp(
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        routes: {
          NewPasswordScreen.id:(context)=> const NewPasswordScreen(),
          ResetPasswordScreen.id:(context)=> const ResetPasswordScreen(),
          LoginScreen.id:(context)=> const LoginScreen(),
          WelcomeScreen.id: (context) => const WelcomeScreen(),
          ViewScreen.id: (context) => const ViewScreen(),
          SignUpScreen.id:(context) => const SignUpScreen(),
          OnBoardingScreen.id:(context)=> const OnBoardingScreen(),
          BasicProfileScreen.id:(context)=> const BasicProfileScreen(),
          ProfessionalDetailsScreen1.id:(context)=> const ProfessionalDetailsScreen1(),
          ProfessionalDetailsScreen2.id:(context)=> const ProfessionalDetailsScreen2(),
          ScheduleScreen.id:(context)=> const ScheduleScreen(),
          VerifiedScreen.id:(context)=> const VerifiedScreen(),
        },
        initialRoute: WelcomeScreen.id,
      ),
      designSize: const Size(375, 667),
    );
  }
}

