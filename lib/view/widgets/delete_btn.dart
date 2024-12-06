import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_colors.dart';
import 'custom_text.dart';

Widget deleateandNotifybtn(BuildContext context,Function ontap,String image,String number) {
 return InkWell(
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  onTap: (){
    ontap();
  },
   child: SizedBox(
    height: 34.h,
    width: 28.w,
    child: Stack(
      children: [
      Align(
      alignment: Alignment.centerLeft,
      child: SvgPicture.asset(image,height: 22,)),
      Positioned(
        top: 0,
        right: 0,
        child: Container(
         height: 18.h, 
         width: 18.w,
         decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.primaryblueColor
         ),
         child: Center(
          child: customTextBold(title: number, fontWeight: FontWeight.w500, fontSize: 11.h,color: AppColors.white,),
         ),
        ),
      )
      ],
    ),
    ),
 );
}