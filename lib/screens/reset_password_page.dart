import 'package:flutter/material.dart';
import 'package:medilitics/screens/new_password_screen.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:medilitics/utilities/medilitics_title_page.dart';
import 'package:medilitics/utilities/re_used_buttons.dart';
import 'package:medilitics/utilities/re_used_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordScreen extends StatelessWidget {
  static String id = '/ResetPasswordScreen';

  const ResetPasswordScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  TitleBar(
                    text: 'Reset password',
                    addDivider: false,
                    width:140.w,
                  ),
                  SizedBox(height: 24.h,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        Text(
                          'Enter the email address associated with your account to get a password reset code.',
                          style: standardStyle.copyWith(fontSize: 16.sp),
                        ),
                        SizedBox(height: 24.h,),
                        ReUsedFields(onChanged: (value){

                        },height: 48.h,isSuffixIcon: false,hintText: 'Email address',)
                      ],
                    ),
                  )
                ],
              ),
              RedButton(text: 'Get reset code',color: myActiveColor,width: 335.w,onPressed: (){
                Navigator.pushNamed(context, NewPasswordScreen.id);
              },)
            ],
          ),
        ),
      ),
    );
  }
}
