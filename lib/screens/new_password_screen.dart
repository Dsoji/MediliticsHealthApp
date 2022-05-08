import 'package:flutter/material.dart';
import 'package:medilitics/screens/login_page.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:medilitics/utilities/medilitics_title_page.dart';
import 'package:medilitics/utilities/re_used_buttons.dart';
import 'package:medilitics/utilities/re_used_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPasswordScreen extends StatefulWidget {
  static String id = '/NewPasswordScreen';
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(bottom: 32.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  TitleBar(
                    text: 'Create new password',
                    addDivider: false,
                    width:204.w,
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(height: 24.h,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        Text(
                          'We just sent you a reset code. Enter it below and set a new password for your account.',
                          style: standardStyle.copyWith(fontSize: 16.sp),
                        ),
                        SizedBox(height: 24.h,),
                        ReUsedFields(onChanged: (value){

                        },height: 48.h,isSuffixIcon: false,hintText: 'Reset code',),
                        ReUsedFields(
                          hintText: 'New password',
                          height: 48.h,
                          isSuffixIcon: true,
                          icon: InkWell(
                            onTap: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                            child: Icon(
                                _isVisible ? Icons.visibility : Icons.visibility_off),
                          ),

                        ),
                        SizedBox(height: 16.h,),
                        Text('8 characters min, a number and special character.',style: standardStyle.copyWith(fontSize: 14.sp,color: const Color(0xFF919197)),)
                      ],
                    ),
                  ),
                ],
              ),
              RedButton(text: 'Create new password',color: myActiveColor,onPressed: (){
                Navigator.pushNamed(context, LoginScreen.id);
              },width: 335.w,)
            ],
          ),
        ),
      ),
    );
  }
}
