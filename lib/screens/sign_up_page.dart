import 'package:flutter/material.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:medilitics/screens/onboardingPage.dart';
import 'package:medilitics/utilities/medilitics_title_page.dart';
import 'package:medilitics/utilities/re_used_buttons.dart';
import 'package:medilitics/utilities/re_used_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  static String id = '/SignUpScreen';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TitleBar(addDivider: false,text: 'Sign up',width: 67.w,height: 56.h,),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              children: [
                SizedBox(
                  height: 24.h,
                ),
                SizedBox(
                  height: 48.h,
                  child: ReUsedFields(isSuffixIcon: false,height: 48,hintText: 'Email address',onChanged: (value){

                  },),
                ),
              ],
            ),
          ),

          RedButton(width: 335.w,color: myActiveColor,text: 'Sign up',onPressed: (){
            Navigator.pushNamed(context, OnBoardingScreen.id);
          },),

          SizedBox(
            height: 88.h,
          )
        ],
      ),
    ));
  }
}
