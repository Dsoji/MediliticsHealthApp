import 'package:flutter/material.dart';
import 'package:medilitics/screens/welcome_page.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:medilitics/utilities/medilitics_title_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:day_picker/day_picker.dart';
import 'package:medilitics/utilities/re_used_buttons.dart';

class ScheduleScreen extends StatefulWidget {
  static String id = '/ScheduleScreen';

  const ScheduleScreen({Key? key}) : super(key: key);
  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  final List<DayInWeek> _days = [
    DayInWeek(
      "Sun",
    ),
    DayInWeek(
      "Mon",
    ),
    DayInWeek("Tue", isSelected: true),
    DayInWeek(
      "Wed",
    ),
    DayInWeek(
      "Thu",
    ),
    DayInWeek(
      "Fri",
    ),
    DayInWeek(
      "Sat",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(

              children: [
                TitleBar(
                  text: 'Schedule',
                  addDivider: false,
                  width: 81.w,
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SelectWeekDays(
                        padding: 0,
                        onSelect: (day) {},
                        buttonHeight: 51.h,
                        buttonWidth: 46.w,
                        border: false,
                        selectedDayTextColor: Colors.white,
                        unSelectedDayTextColor: const Color(0xFF919197),
                        days: _days,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        daysFillColor: const Color(0xFF0B7CB9),
                        boxDecoration: const BoxDecoration(
                          color: Color(0xFFF3F1F1),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                        ),
                      ),
                      SizedBox(
                        height: 175.h-51.h,
                        child: Material(
                          elevation: 2,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(left: 14.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 251.w,
                                      height: 48.h,
                                      child: Card(
                                        child: Row(
                                          children: [
                                            SizedBox(width:14.w,),
                                            Text('09:00 AM',style: standardStyle.copyWith(fontSize: 14.sp),),
                                            SizedBox(width:12.w,),
                                            const Icon(
                                              Icons.keyboard_arrow_down,
                                              size: 16,
                                              color: Color(0xFFDCDCDC),
                                            ),
                                            SizedBox(width:11.25.w,),
                                            SizedBox(width:12.w,child: const Divider(),),
                                            SizedBox(width:13.w,),
                                            Text('04:00 PM',style: standardStyle.copyWith(fontSize: 14.sp),),
                                            SizedBox(width:13.25.w,),
                                            const Icon(
                                              Icons.keyboard_arrow_down,
                                              size: 16,
                                              color: Color(0xFFDCDCDC),
                                            ),
                                            SizedBox(width:14.w,),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 22.2.w),
                                      child: const Icon(Icons.delete_outline,color: Color(0xFF919197),),
                                    ),
                                  ],
                                ),
                                TextButton(onPressed: (){

                                }, child: const Text('Add another time slot'))
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      Row(
                        children: [
                          Material(
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                            color: const Color(0xFFF05256),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                          ),
                          SizedBox(width: 11.77.w,),
                          Text('Add more days',style: standardStyle.copyWith(fontSize: 14.sp,color:const Color(0xFFF05256), ),),
                        ],
                      ),

                    ],
                  ),
                ),

              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 32.h),
              child: RedButton(onPressed: (){
                Navigator.pushNamed(context, WelcomeScreen.id);
              },width: 335.w,text: 'Save schedule',color: myActiveColor,),
            ),
          ],
        ),
      ),
    );
  }
}
