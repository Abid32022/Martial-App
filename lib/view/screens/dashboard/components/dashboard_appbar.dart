

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constant.dart';
import '../../../widgets/custom_text.dart';


Widget dashboardcustomAppbar(BuildContext context,Function ontap) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.12,
    child: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 19),
            child: GestureDetector(
              onTap: (){
              ontap();
              },
              child: SvgPicture.asset(AppConstant.menuicon,height: 33.h,)),
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
          // ignore: deprecated_member_use
          child: SvgPicture.asset(AppConstant.icback,color: Colors.black,)),
        ),
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        clipBehavior: Clip.none,
        title: customTextBold(title: "Dashboard", fontWeight: FontWeight.w500, fontSize: 20.h,color: AppColors.darkbluecolor),
      ),
  );
}

// var customAppbar = 