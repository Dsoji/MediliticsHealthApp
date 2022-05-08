import 'package:flutter/material.dart';
import 'package:medilitics/utilities/medilitics_title_page.dart';
import 'package:medilitics/screens/profession_details2.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:medilitics/utilities/re_used_buttons.dart';
import 'package:medilitics/utilities/re_used_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfessionalDetailsScreen1 extends StatefulWidget {
  static String id = '/ProfessionalDetailsScreen1';
  const ProfessionalDetailsScreen1({Key? key}) : super(key: key);

  @override
  State<ProfessionalDetailsScreen1> createState() =>
      _ProfessionalDetailsScreen1State();
}

class _ProfessionalDetailsScreen1State
    extends State<ProfessionalDetailsScreen1> {
  bool automaticAddress = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: Column(
            children: [
              TitleBar(text: 'Professional details',onTap: (){
                Navigator.pop(context);
              },addDivider: true,divider: SizedBox(
                width: 185.w,
                child: Divider(
                  height: 3.h,
                  color: const Color(0xFF0B7CB9),
                  thickness: 3.h,
                  //thickness: ,
                ),
              ),width:171.w,),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                  children: [
                    ReUsedFields(
                      height: 48.h,
                      hintText: 'Board/degree staus',
                      isSuffixIcon: true,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        size: 20.sp,
                      ),
                    ),
                    ReUsedFields(
                      height: 48.h,
                      hintText: 'MDCN number',
                      isSuffixIcon: false,
                    ),
                    ReUsedFields(
                      height: 48.h,
                      hintText: 'Select specialty',
                      isSuffixIcon: true,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        size: 20.sp,
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Text(
                      'Enter your address below. We’ll only use this to recommend you to nearby patients.',
                      style: standardStyle.copyWith(fontSize: 16.sp),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    automaticAddress
                        ? ReUsedFields(
                            height: 48.h,
                            hintText: 'Start typing to select address...',
                            isSuffixIcon: false,
                          )
                        : ReUsedFields(
                            height: 48.h,
                            hintText: 'Country',
                            isSuffixIcon: true,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        size: 20.sp,
                      ),
                          ),
                    automaticAddress
                        ? ReUsedFields(
                            hintText: 'Additional address details (optional)',
                            height: 48.h,
                            isSuffixIcon: false,
                          )
                        : Row(
                            children: [
                              Flexible(
                                  child: ReUsedFields(
                                height: 48.h,
                                hintText: 'State',
                                isSuffixIcon: true,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down,
                                      size: 20.sp,
                                    ),
                              )),
                              Flexible(
                                  child: ReUsedFields(
                                    height: 48.h,
                                    hintText: 'Region',
                                    isSuffixIcon: true,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down,
                                      size: 20.sp,
                                    ),
                                  )),
                            ],
                          ),
                    automaticAddress==false?ReUsedFields(hintText: 'Enter street address (optional)',height: 48.h,isSuffixIcon: false,):const SizedBox(),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          automaticAddress=false;
                        });
                      },
                      child: const Text(
                        'Enter address manually',
                        style: TextStyle(color: Color(0xFF0B7CB9)),
                      ),
                    ),
                  ],
                ),
              ),
              RedButton(text:'Next',onPressed: () {
                Navigator.pushNamed(context, ProfessionalDetailsScreen2.id);
              }, color: automaticAddress?const Color(0xFFFBD4D5):myActiveColor,width: 335.w,)
            ],
          ),
        ),
      ),
    );
  }
}
