import 'package:ev_martial/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../utils/app_constant.dart';
import '../../../widgets/custom_text.dart';



 void authcustombottomsheet(BuildContext context, {String text1 = "", String text2 = "", String image = "",double? height,}){
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
     padding: EdgeInsets.symmetric(horizontal: 19.w,vertical: 30.h),
     child: SingleChildScrollView(
     child: Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(image, height: 70.h, width: 61.w,),
                SizedBox(height: 15.h,),
                customTextBold(title: text1, fontWeight: FontWeight.w500, fontSize: 20.h),
                SizedBox(height: 8.h,),
                customTextRegular(title: text2, fontWeight: FontWeight.w400, fontSize: 15.h,color: AppColors.black,align: TextAlign.center),
              ],
            ),
          ),
        ),
        Positioned(
            top: 0.h,
            right: 5,
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
