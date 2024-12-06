import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_constant.dart';

void custombottomsheet(BuildContext context, {double? height,Widget? content,}){
   showModalBottomSheet(
     backgroundColor: Colors.transparent,
     isScrollControlled: true,
     context: context,
     clipBehavior: Clip.none,
      builder: (context) {
     return StatefulBuilder(
     builder: (BuildContext context, StateSetter setState ) {
     return SizedBox(
     child: Container(
     height: height,
     width: double.infinity,
     decoration: const BoxDecoration(
    color: AppColors.white,
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(14),
     topRight:  Radius.circular(14)
     )
    ),
    //  padding: EdgeInsets.symmetric(horizontal: 19.w,vertical: 30.h),
     child: SingleChildScrollView(
     child: Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Padding(
             padding: EdgeInsets.only(left: 19.w,right: 19.w,top: 40.h,bottom: 10.h),
            child: SizedBox(
              child: content
            ),
          ),
        ),
        Positioned(
            top: 10,
            right: 19,
            child: GestureDetector(
            onTap: (){
             Get.back();
             },
           child: SvgPicture.asset(AppConstant.icbackcross,height: 24.h,width: 24.w,))),
      ],
    ),
         )
           )
           );
           }
          );
        }
      );
   }