import 'package:ev_martial/view/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constant.dart';
import '../../../widgets/custom_text.dart';

class Vedios extends StatelessWidget {
  const Vedios({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
           padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 13.h),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(14),
             border: Border.all(color: AppColors.LightBorder,width: 1.5),
           ),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customTextBold(title: 'Videos', fontWeight: FontWeight.w500, fontSize: 17.h,color: AppColors.primaryblueColor),
              ListView.builder(
             clipBehavior: Clip.none,
             padding: EdgeInsets.zero,
             shrinkWrap: true,
             physics: const NeverScrollableScrollPhysics(),
             itemCount: 2,
             itemBuilder: (BuildContext context, int index) {
             return Column(
               children: [
                 Padding(
                   padding: EdgeInsets.only(bottom: 10.h),
                   child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            customTextBold(title: 'Jiu Jitsu', fontWeight: FontWeight.w500, fontSize: 16.h,color: AppColors.black),
                            SizedBox(height: 6.h,),
                            customTextBold(title: 'Jiu Jitsu, also known as Brazilian Jiu-Jitsu (BJJ), is a martial art and self-defense system..', fontWeight: FontWeight.w400, fontSize: 13.h,color: AppColors.black),
                            SizedBox(height: 6.h,),
                            Row(
                              children: [
                                SvgPicture.asset(AppConstant.play,height: 30,),
                                SizedBox(width: 8.w,),
                                customTextBold(title: '15 m 10 s', fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.darkgrey),
                              ],
                            )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w,),
                       Container(
                        height: 133.58,
                        width: 76,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.6),
                        ),
                        child: Image.asset(AppConstant.eventimage,fit: BoxFit.cover,),
                       )
                    ],
                      )
                 ),
              index == 1 ? const SizedBox() : Column(
                children: [
                 SizedBox(height: 5.h,),
                  customDivider(
                  height: 3,
                 width: double.infinity
                  ),
                 SizedBox(height: 10.h,),
                   ],
                  ),
               ],
             );
             }
             ),
            ],
           ),
           )
      ],
    );
  }
}