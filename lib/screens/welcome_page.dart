import 'package:flutter/material.dart';
import 'package:medilitics/screens/login_page.dart';
import 'package:medilitics/screens/view_page.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:medilitics/utilities/re_used_buttons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static String id = '/WelcomeScreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset(
              'images/image1.jpg',
            ),
            Positioned(
              top: 250.h,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0.w,right: 20.0.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 364.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'images/medilitics_logoX.png',
                                width: 40.w,
                                height: 39.h,
                              ),
                              Text(
                                'MEDILITICS',
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  color: myActiveColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5.h,),
                          SizedBox(
                            child: Text(
                              'Unlock better health outcomes for patients.',
                              style: TextStyle(
                              fontSize: 28.sp,
                              fontWeight: FontWeight.w700,
                              color: greyBlackColor,
                            ),
                            ),
                            width: 335.w,
                          ),
                          SizedBox(height: 8.h,),
                          SizedBox(
                            child: Text(
                              'Get the tools and insights you need to manage your diabetes and hypertension patients so they can live a healthy life.',
                              style: standardStyle.copyWith(fontSize: 16.sp),
                            ),
                            width: 335.w,
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          RedButton(
                            text: 'Get started',
                            onPressed: () {
                              Navigator.pushNamed(context, ViewScreen.id);
                            },
                            color: myActiveColor,
                            width: 335.w,
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          WhiteButton(
                            text: 'I already have an account',
                            onPressed: () {
                              Navigator.pushNamed(context, LoginScreen.id);
                            },
                            width: 335.w,
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
