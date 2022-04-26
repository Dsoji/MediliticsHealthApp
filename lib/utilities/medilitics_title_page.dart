import 'package:flutter/material.dart';
import 'package:medilitics/utilities/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleBar extends StatelessWidget {
  final String? text;
  final bool? addDivider;
  final Widget? divider;
  final double? width;
  final double? height;
  final void Function()? onTap;
  const TitleBar({this.text,this.onTap,this.height,this.width,this.divider,this.addDivider,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15.h, left: 20.w),
              child: Row(
                children: [
                  InkWell(
                    onTap: onTap,
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: greyBlackColor,
                      size: 18,
                    ),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width -
                        width!)/2-35.w,
                  ),
                  Text(
                    text!,
                    textAlign: TextAlign.center,
                    style: standardStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.38.h),
            addDivider!?divider!:const SizedBox(),
          ],
        ),
      ),
    );
  }
}
