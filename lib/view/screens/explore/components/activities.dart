import 'package:ev_martial/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/app_colors.dart';
import '../../../widgets/custom_text.dart';

class Activities extends StatelessWidget {
  const Activities({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customTextBold(title:'Activities', fontWeight: FontWeight.w500, fontSize: 17.h,color: AppColors.darkbluecolor),
            customTextBold(title:'See all', fontWeight: FontWeight.w400, fontSize: 17.h,color: AppColors.primaryblueColor),
          ],
        ),
        SizedBox(height: 10.h,),
        SizedBox(
           height: 43.h,
          child: ListView.builder(
            itemCount: 8,
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
             return Padding(
               padding: EdgeInsets.only(right: 10.w),
               child: Container(
               height: 43.h,
               padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.primaryblueColor
                 ),
               child: Row(
                children: [
                 SvgPicture.asset(AppConstant.dumbbell,height: 22,),
                 SizedBox(width: 5.w,),
                 customTextBold(title:'Jiu Jitsu', fontWeight: FontWeight.w400, fontSize: 16.h,color: AppColors.white),
                ],
                 ),
               ),
             );
            },
          ),
        ),
      ],
    );
  }
}