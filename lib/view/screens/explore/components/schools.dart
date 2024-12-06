import 'package:ev_martial/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../widgets/custom_text.dart';

// ignore: must_be_immutable
class Schools extends StatelessWidget {
   Schools({super.key});
List<String> schools = [
  AppConstant.school1,
  AppConstant.school2,
  AppConstant.school3,
  AppConstant.school4,
];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customTextBold(title:'School', fontWeight: FontWeight.w500, fontSize: 17.h,color: AppColors.darkbluecolor),
            customTextBold(title:'See all', fontWeight: FontWeight.w400, fontSize: 17.h,color: AppColors.primaryblueColor),
          ],
        ),
        SizedBox(height: 10.h,),
        SizedBox(
          height: 92.h,
          child: ListView.builder(
            itemCount: schools.length,
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
             return Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Container(
              height: 92.h,
              width: 92.w,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.LightBorder,width: 1.5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(schools[index]),
            ),
             );
            }
            )
            ),
        
      ],
    );
  }
}