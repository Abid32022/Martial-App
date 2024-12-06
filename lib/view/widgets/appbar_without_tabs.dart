// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_constant.dart';
import 'custom_text.dart';
import 'delete_btn.dart';


Widget appBarwithoutTabs(BuildContext context,Function ontap,String title,) {
  return SizedBox(
    height: 100.h,
    child: AppBar(
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 19),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        deleateandNotifybtn(
                        context,
                        (){}, 
                        AppConstant.delete,
                        '5',
                        ),
                        SizedBox(width: 8.w,),
                        SvgPicture.asset(AppConstant.filter,height: 17.h,color: AppColors.black,),
                        SizedBox(width: 8.w,),
                        GestureDetector(
                          onTap: (){
                          ontap();
                          },
                          child: SvgPicture.asset(AppConstant.menuicon,height: 33.h,)),
                        ],
                        ),
                      )
                    ],
                    centerTitle: true,
                    elevation: 0,
                    leadingWidth: 46.w,
                    leading: Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: GestureDetector(
                        onTap: (){
                        Get.back();  
                      },
                      child: SvgPicture.asset(AppConstant.icback,color: Colors.black,)),
                    ),
                    backgroundColor: Colors.transparent,
                    automaticallyImplyLeading: false,
                    clipBehavior: Clip.none,
                    title: Padding(
                      padding: EdgeInsets.only(right: 14.w),
                      child: customTextBold(title: title, fontWeight: FontWeight.w500, fontSize: 19.h,color: AppColors.darkbluecolor),
                    ),
                  ),
              );
}