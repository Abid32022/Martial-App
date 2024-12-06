import 'package:ev_martial/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../utils/app_colors.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/delete_btn.dart';

Widget explorecustomAppbar(BuildContext context,Function ontap) {
  return SafeArea(
    child: Container(
      color: Colors.transparent,
      height: MediaQuery.of(context).size.height * 0.11,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19,vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                    SizedBox(
                     height: 60.h,
                     width: 58.w,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                              height: 50.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(AppConstant.profile2,fit: BoxFit.cover,),
                              ),
                            ),
                            Positioned(
                              right: 4,
                              top: 2,
                              child: Container(
                              height: 12.h,
                              width: 12.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.greencolor
                              ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 3.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        customTextBold(title: 'Good Evening', fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.darkgrey),
                        SizedBox(height: 5.h,),
                        customTextBold(title: 'Marc Wilson', fontWeight: FontWeight.w500, fontSize: 17.h,color: AppColors.black),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      deleateandNotifybtn(
                        context,
                        (){},
                        AppConstant.delete,
                        '5',
                      ),
                      SizedBox(width: 10.w,),
                       deleateandNotifybtn(
                        context,
                        (){},
                        AppConstant.notify,
                        '3',
                      ),
                       SizedBox(width: 10.w,),
                      InkWell(
                       splashColor: Colors.transparent,
                       highlightColor: Colors.transparent, 
                      onTap: (){
                      ontap();
                      },
                      child: SvgPicture.asset(AppConstant.menuicon,height: 33.h,)),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      )
    ),
  );
}




// var customAppbar = 