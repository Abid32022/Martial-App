import 'package:ev_martial/utils/app_constant.dart';
import 'package:ev_martial/view/widgets/custom_button.dart';
import 'package:ev_martial/view/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/app_colors.dart';
import '../../../widgets/custom_text.dart';

class UpcommingBooking extends StatelessWidget {
  const UpcommingBooking({super.key});

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
               Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Expanded(
                     child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customTextBold(title: 'Upcoming Booking', fontWeight: FontWeight.w500, fontSize: 17.h,color: AppColors.primaryblueColor),
                          SizedBox(height: 10.h,),
                          Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    customTextBold(title: 'Jiu Jitsu', fontWeight: FontWeight.w500, fontSize: 16.h,color: AppColors.black),
                                    SizedBox(height: 6.h,),
                                    customTextBold(title: 'Mon 21 Aug 2023', fontWeight: FontWeight.w400, fontSize: 13.h,color: AppColors.black),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                   Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                     children: [
                                       customTextBold(title: '12/30', fontWeight: FontWeight.w500, fontSize: 16.h,color: AppColors.black),
                                       SizedBox(width: 5.w,),
                                       SvgPicture.asset(AppConstant.circles,height: 16,)
                                     ],
                                   ),
                                    SizedBox(height: 6.h,),
                                    customTextBold(title: '07:00 PM - 08:30', fontWeight: FontWeight.w400, fontSize: 13.h,color: AppColors.black),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 8.h,),
                          customDivider(
                            height: 3,
                            width: double.infinity
                          ),
                          SizedBox(height: 8.h,),
                          Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 45,
                                  child: customButton(
                                  colors: AppColors.skipbtncolor,
                                  text: "Details",
                                  borderRadius: 8.87,
                                  ontap: (){
                                  }
                                  ),
                                ),
                              ),
                          SizedBox(width: 5.w,),
                          Expanded(
                            child: SizedBox(
                              height: 45,
                              child: customButton(
                              fontColor: AppColors.primaryblueColor,
                              colors: AppColors.Secondary,
                              text: "Booked",
                              borderRadius: 8.87,
                              ontap: (){
                              }
                               ),
                            ),
                          ),
                            ],
                          ),
                        ],
                      )
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
               ),
            ],
           ),
           )
      ],
    );
  }
}