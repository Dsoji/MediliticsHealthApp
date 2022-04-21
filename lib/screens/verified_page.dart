import 'package:flutter/material.dart';
import 'package:medilitics/screens/schedule_screen.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medilitics/utilities/re_used_buttons.dart';

class VerifiedScreen extends StatelessWidget {
  static String id = '/VerifiedScreen';

  const VerifiedScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 48.w,right: 48.w,top: 80.h,bottom: 32.h),
          child: Column(
            children: [
              SizedBox(height: 24.h,),
              Text('You’ve been verified',style: standardStyle.copyWith(fontSize: 28.sp,fontWeight: FontWeight.w700),),
              Text('Congrats! We’ve approved your profile. You can now be matched with patients to provide care.',style: standardStyle.copyWith(fontSize: 16.sp,),
              ),
              SizedBox(height: 219.h,),
              RedButton(color: myActiveColor,text: 'Set your schedule',width: 335.w,onPressed: (){
                Navigator.pushNamed(context, ScheduleScreen.id);
              },),
              SizedBox(height: 16.h,),
              WhiteButton(text: 'Log out',width: 335.w,onPressed: (){

              },)
            ],
          ),
        ),
      ),
    );
  }
}
