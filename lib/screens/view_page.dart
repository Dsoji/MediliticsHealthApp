import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:medilitics/screens/sign_up_page.dart';
import 'package:medilitics/screens/view_page1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ViewScreen extends StatefulWidget {
  static String id = '/ViewScreen';
  const ViewScreen({Key? key}) : super(key: key);

  @override
  _ViewScreenState createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  final PageController _pageController = PageController();
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 20.43,top: 24.46,right: 20,bottom: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.clear,
                color: Color(0xFF222525),
                size: 15.54,
              ),
              Flexible(
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    PageView(
                      onPageChanged: (index){
                        setState(() {
                          _index = index;
                        });
                      },
                      controller: _pageController,
                      children: const [
                        ViewPage('images/image2.png','Get powerful tools and data to help patients manage their condition','Manage Patients',),
                        ViewPage('images/image3.png', 'Gain access to AI-driven reports on patients health conditions.', 'Access research data'),
                        ViewPage('images/image4.png', 'See whether patients are following through with their care plan and intervene in emergencies.', 'Monitor and help'),
                      ],
                    ),
                    Positioned(
                      top: 481.h,
                      child: SmoothPageIndicator(
                        controller: _pageController, // PageController
                        count: 3,
                        effect: const SwapEffect(
                          dotHeight: 10,
                          dotWidth: 10,
                          activeDotColor: myActiveColor,
                          dotColor: Color(0xFFC4C4C4),
                        ), // your preferred effect
                        onDotClicked: (index) {},
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      _index==0?'Skip':'Previous' ,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Messina Sans',
                        color: Colors.black
                      ),
                    ),
                  ),
                  MaterialButton(
                    color: myActiveColor,
                    height: 50,
                    minWidth: 119,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    onPressed: () {
                      if(_index==2){
                        Navigator.pushNamed(context, SignUpScreen.id);
                      }
                    },
                    child: Text(
                      _index==2? 'Sign up':'Next',
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
