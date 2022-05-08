import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medilitics/utilities/constants.dart';

class IndividualPatient extends StatelessWidget {
  static String id = '/IndividualPatient';
  final String? patientName;
  const IndividualPatient({Key? key,this.patientName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(height: 11.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20.w,),
                      Icon(Icons.arrow_back_ios,color: greyBlackColor,size: 16,),
                      SizedBox(width: 22.w,),
                      Image.asset('images/profileIcon.png',color: Color(0xFF919197),
                        height: 32.h,
                        width: 32.w,),
                      SizedBox(width: 12.w,),
                      Text(patientName!,style: standardStyle.copyWith(fontWeight: FontWeight.w700),),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.more_horiz_outlined,color: greyBlackColor),
                      SizedBox(width: 20.w,),
                    ],
                  )
                ],
              ),
              SizedBox(height: 11.h,),
              TabBar(
                  indicatorColor: Color(0xFF0B7CB9),
                  indicatorWeight: 3.5,
                  labelColor: Color(0xFF0B7CB9),
                  unselectedLabelColor: Color(0xFF919197),
                  labelStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  tabs: [
                    Text(
                      "Profile",
                    ),
                    Text(
                      "Reports",
                    ),
                    Row(
                      children: [
                        Text(
                          "Notes",
                        ),
                        Icon(Icons.lock_outline_rounded),
                      ],
                    )
                  ]),
              Expanded(
                child: TabBarView(
                  children: [Profile(), Reports(), Notes()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F1F1),
      body: ListView(
        children: [
          SizedBox(child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 20.w,),
                  Text('Jump to section',style: standardStyle.copyWith(color: const Color(0xFF919197)),),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.keyboard_arrow_down,color: Color(0xFF919197),size: 25,),
                  SizedBox(width: 20.w,),
                ],
              )
            ],
          ),height: 46.h,),
          Divider(thickness: 2,),
          SizedBox(child: Row(
            children: [
              SizedBox(width: 20.w,),
              Text('BASICS',style: standardStyle.copyWith(color: const Color(0xFF919197),fontSize: 14),),
            ],
          ),height: 46.h,),
          ReUsedProfileCard(title: 'ID',subTitle: '1894303',),
          ReUsedProfileCard(title: 'Gender',subTitle: 'Male',),
          ReUsedProfileCard(title: 'Age',subTitle: '55 yrs, 11 mnths, 6 days',),
          ReUsedProfileCard(title: 'Height',subTitle: '112 cm',),
          ReUsedProfileCard(title: 'Weight',subTitle: '78 kg',),
          ReUsedProfileCard(title: 'Waist circumference',subTitle: '1894303',),
          ReUsedProfileCard(title: 'Hip circumference',subTitle: '1894303',),
          ReUsedProfileCard(title: 'Body fat (%)',subTitle: '1894303',),
          ReUsedProfileCard(title: 'BMI',subTitle: '53, Obese',),
          ReUsedProfileCard(title: 'Racial identity',subTitle: 'Black',),
          ReUsedProfileCard(title: 'Email',subTitle: 'williams@gmail.com',),
          ReUsedProfileCard(title: 'Phone no.',subTitle: '+234 902 274 3891',),
          ReUsedProfileCard(title: 'Address',subTitle: '15a Idejo Str, Victoria...',),
        ],
      ),
    );
  }
}
class ReUsedProfileCard extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final IconData? icon;
  const ReUsedProfileCard({Key? key,this.icon,this.title,this.subTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          height: 48.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 20.w,),
                  Text(title!,style: standardStyle.copyWith(color: const Color(0xFF919197),fontSize: 14),),

                ],
              ),
              Row(
                children: [
                  SizedBox(child: Text(subTitle!,style: standardStyle.copyWith(),textAlign: TextAlign.right,),width: 140.w),
                  SizedBox(width: 16.75.w,),
                  Icon(Icons.arrow_forward_ios,color: const Color(0xFF919197),size: 16,),
                  SizedBox(width: 20.w,),
                ],
              )
            ],
          ),
        ),
        Divider(height: 2.h,),
      ],
    );
  }
}

class Reports extends StatelessWidget {
  const Reports({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class Notes extends StatelessWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
