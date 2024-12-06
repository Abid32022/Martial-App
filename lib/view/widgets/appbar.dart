// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_constant.dart';
import '../screens/classes/components/who_joinyou.dart';
import 'custom_text.dart';
import 'delete_btn.dart';

Widget appbar(BuildContext context,Function ontap,TabController tabcontroller,List<String> tabs,String title,bool twotabspadding,{double defaulttabpadding = 23}) {
  return SizedBox(
    height: 200.h,
    child: AppBar(
      bottom:  TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: twotabspadding ? 60.w : defaulttabpadding.w),
               indicatorPadding: EdgeInsets.only(bottom: 6.h),
               unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400,fontFamily: 'EnnVisions',),
                unselectedLabelColor: AppColors.darkbluecolor,
                labelColor: AppColors.darkbluecolor,
                labelStyle: TextStyle(fontSize: 16.h,fontWeight: FontWeight.w600,fontFamily: 'EnnVisions',),
                indicatorColor: AppColors.indicatorcolor,
                controller: tabcontroller,
                isScrollable: true,
                splashFactory: NoSplash.splashFactory,
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  return states.contains(MaterialState.focused) ? null : Colors.transparent;
                },
              ),
                tabs: tabs.map((String tabLabel) {
                return Tab(
                  text: tabLabel,
                );
              }).toList(), 
                 ),
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
                        InkWell(
                          onTap: (){
                            whojoinYou(context);
                          },
                        child: SvgPicture.asset(AppConstant.filter,height: 17.h,color: AppColors.black,)),
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
                      padding: EdgeInsets.only(right: 10.w),
                      child: customTextBold(title: title, fontWeight: FontWeight.w500, fontSize: 19.h,color: AppColors.darkbluecolor),
                    ),
                  ),
              );
}