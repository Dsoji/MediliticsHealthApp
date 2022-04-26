import 'package:flutter/material.dart';
import 'package:medilitics/screens/onboardingPage.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:medilitics/utilities/medilitics_title_page.dart';
import 'package:medilitics/utilities/re_used_buttons.dart';
import 'package:medilitics/utilities/re_used_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BasicProfileScreen extends StatefulWidget {
  static String id = '/BasicProfileScreen';
  const BasicProfileScreen({Key? key}) : super(key: key);

  @override
  State<BasicProfileScreen> createState() => _BasicProfileScreenState();
}

class _BasicProfileScreenState extends State<BasicProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleBar(text: 'Basic profile',width: 108.w,addDivider: false,onTap: (){
              Navigator.pop(context);
            },),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(bottom: 32.h,right: 20.w,left: 20.w),
                children: [
                   SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    '👋🏻 Let’s meet you ',
                    style: standardStyle.copyWith(fontSize: 16.sp),
                  ),
                  SizedBox(height: 8.1.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 80.h,
                        width: 80.h,
                       child: const CircleAvatar(
                         backgroundColor: myActiveColor,
                       ),
                     ),

                      Text(
                        'Upload picture',
                        style: standardStyle.copyWith(
                            color: const Color(0xFF0B7CB9),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(height: 14.h,),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: ReUsedFields(height: 50.h,hintText: 'First name',isSuffixIcon: false,)
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Flexible(
                            child: ReUsedFields(height: 50.h,hintText: 'Last name',isSuffixIcon: false,),
                          ),
                        ],
                      ),
                      ReUsedFields(isSuffixIcon: true,icon: Icon(
                        Icons.keyboard_arrow_down,
                        size: 20.sp,
                      ),hintText: 'Select your gender',onChanged: (value){

                      },height: 48.h,),
                      Card(
                        child: SizedBox(
                          child: InternationalPhoneNumberInput(
                            onInputChanged: (phoneNumber){

                            },
                            inputDecoration: const InputDecoration(
                              hintText: '000 000 0000',
                            ),
                            inputBorder: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                          ),
                          ),
                          height: 50.h,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 32.h),
              child: RedButton(
                  text:'Complete onboarding', onPressed: () {
                    Navigator.pushNamed(context, OnBoardingScreen.id);
              },color: const Color(0xFFFBD4D5), width: 335.w,),
            ),
          ],
        ),
      ),
    );
  }
}
