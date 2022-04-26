import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medilitics/screens/verified_page.dart';
import 'package:medilitics/utilities/medilitics_title_page.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:medilitics/utilities/re_used_buttons.dart';
import 'package:medilitics/utilities/re_used_fields.dart';

class ProfessionalDetailsScreen2 extends StatelessWidget {
  static String id = '/ProfessionalDetailsScreen2';
  const ProfessionalDetailsScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                TitleBar(text: 'Professional details',onTap: (){
                  Navigator.pop(context);
                },addDivider: true,divider: Divider(
                  height: 3.h,
                  color: const Color(0xFF0B7CB9),
                  thickness: 3.h,
                  //thickness: ,
                ),width:171.w,),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0.w,horizontal: 20.0.h),
                  child: Column(
                    children: [
                      Text(
                        'Please enter the hospital(s) you’re affiliated with below.',
                        style: standardStyle.copyWith(fontSize: 16.sp),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      ReUsedFields(height: 48.h,hintText: 'Select hospital affiliation',isSuffixIcon: true,icon: Icon(
                        Icons.keyboard_arrow_down,
                        size: 20.sp,
                      ),),
                    ],
                  ),
                ),

              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 32.h,right: 20.w,left: 20.w),
              child: Row(
                children: [
                  Flexible( 
                    child: WhiteButton(text: 'Previous',width: 160,onPressed: (){

                    },),
                  ),
                  SizedBox(width: 15.w,),
                  Flexible(
                    child: RedButton(text: 'Complete',color: const Color(0xFFFBD4D5),width: 160.w,onPressed: (){
                      Navigator.pushNamed(context, VerifiedScreen.id);
                    },),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
