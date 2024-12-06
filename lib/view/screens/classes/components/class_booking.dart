import 'package:ev_martial/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../models/class_booking_model.dart';
import '../../../../utils/app_colors.dart';
import '../../../widgets/custom_bottomsheet.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text.dart';
import '../../auth/widgets/auth_bottomsheet.dart';

void classesBooking(BuildContext context){
  List<ClassBookingModel> shodule = [
   ClassBookingModel(AppConstant.classname, 'Class Name', 'Martial art Brazilian Wrestling'),
   ClassBookingModel(AppConstant.classdate, 'Class Date', '31 December, 2023'),
   ClassBookingModel(AppConstant.classtime, 'ClassTimings', '07:00 pm – 08: 50 pm'),
   ClassBookingModel(AppConstant.classinstructor, 'Instructor', 'Benedict Cumberbatch'),
  ];
  custombottomsheet(
    // height: 400,
    context,
    content: Column(
      children: [
       customTextBold(title: 'Confirm Booking', fontWeight: FontWeight.w500, fontSize: 18.h,color: AppColors.black),
       SizedBox(height: 7.h,),
       Padding(
         padding: EdgeInsets.symmetric(horizontal: 20.w),
         child: customTextBold(
          textAlign: TextAlign.center,
          title: 'Please review the following infomation and click confirm to complete your booking!', fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.black),
       ),
          SizedBox(height: 20.h,),
             ListView.builder(
                    clipBehavior: Clip.none,
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: shodule.length,
                    itemBuilder: (BuildContext context, int index) {
                    return Container(
                    height: 40.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      border: Border(top: BorderSide(color:AppColors.LightBorder,width: 1,),bottom: BorderSide(color:AppColors.LightBorder,width: 1,))
                    ),
                      child: Center(
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                               SvgPicture.asset(shodule[index].icon,height: 20,),
                               SizedBox(width: 10.w,),
                              customTextBold(title: shodule[index].text1, fontWeight: FontWeight.w500, fontSize: 16.h,color: AppColors.black),
                            ],
                          ),
                          customTextBold(title: shodule[index].text2, fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.darkgrey),
                          ],
                          ),
                      ),
                    );
                    }
                    ),
                     SizedBox(height: 15.h,),
                     Row(
                      children: [
                     Expanded(
                       child: customButton(
                        colors: AppColors.skipbtncolor,
                        text: "CANCEL",
                         borderRadius: 8.87,
                       ontap: (){
                          Navigator.pop(context);       
                        }
                      ),
                     ),
                     SizedBox(width: 10.w,),
                    Expanded(
                      child: customButton(
                      colors: AppColors.Secondary,
                      text: "CONFIRM",
                      borderRadius: 8.87,
                      ontap: (){
                      Navigator.pop(context);      
                     authcustombottomsheet(
                     context,
                     text1: "Booking Confirmed",
                     text2: "Your booking is confirmed and ready to create wonderful memories!",
                     image: AppConstant.successicon,
                   );
                      }
                      ),
                    ),
                      ],
                     )
                    ],
                  )
                );
}