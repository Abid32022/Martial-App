import 'package:ev_martial/view/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constant.dart';
import '../../../widgets/custom_bottomsheet.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text.dart';
import 'class_booking.dart';

void classesDetail(BuildContext context,String text){
  List<String> days = [
    'Monday',
    'Tuesday ',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];
  custombottomsheet(
    // height: 400,
    context,
    content: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
        customTextBold(title: "Ladies Apex Martial Arts.", fontWeight: FontWeight.w500, fontSize: 20.h,color: AppColors.black),
        customTextBold(title: "12/30", fontWeight: FontWeight.w400, fontSize: 18.h,color: AppColors.black),
       ],
       ),
       SizedBox(height: 10.h,),
       customTextBold(title: "In Evesham, we're unique in our approach to education. We recognize that the learning needs of a five-year-old and a ten-year-old are quite different. That's why we have distinct classes for three age groups: 4-6, 7-9, and 10-14-year-olds. This ensures that each student receives tailored instruction for their stage of development.", fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.black),
       SizedBox(height: 8.h,),
       customDivider(
         height: 3.h,
        width: double.infinity
       ),
        SizedBox(height: 8.h,),
        Wrap(
          spacing: 16.w,
          runSpacing: 5.h,
          children: [
            customTextBold(title: "Kickboxing", fontWeight: FontWeight.w500, fontSize: 15.h,color: AppColors.black),
            customTextBold(title: "Mon 21 Aug 2023", fontWeight: FontWeight.w400, fontSize: 15.h,color: AppColors.black),
            customTextBold(title: "07:00 PM -  08:30 PM", fontWeight: FontWeight.w400, fontSize: 15.h,color: AppColors.black),
          ],
        ),
        SizedBox(height: 8.h,),
       customDivider(
        height: 3.h,
        width: double.infinity
       ),
       SizedBox(height: 8.h,),
           Row(
          children: [
             SizedBox(width: 3.w,),
              Container(
                  height: 50.h,
                    width: 50.w,
                     decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(AppConstant.school3,fit: BoxFit.cover,),
                       ),
                       SizedBox(width: 10.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        customTextBold(title: 'Jiu Jitsu Fundamentals', fontWeight: FontWeight.w500, fontSize: 18.h,color: AppColors.black),
                        SizedBox(height: 5.h,),
                        customTextBold(title: 'Hutton, United Kingdom.', fontWeight: FontWeight.w400, fontSize: 15.h,color: AppColors.black),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h,),
                customDivider(
                  height: 3.h,
                  width: double.infinity
                ),
                  SizedBox(height: 8.h,),
                  Row(
                    children: [
                      SizedBox(width: 3.w,),
                        Container(
                            height: 50.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(AppConstant.profile2,fit: BoxFit.cover,),
                                ),
                                SizedBox(width: 10.w,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  customTextBold(title: 'Marc Wilson', fontWeight: FontWeight.w500, fontSize: 18.h,color: AppColors.black),
                                  SizedBox(height: 5.h,),
                                  customTextBold(title: 'Karate, Krav Maga, Taekwondo, Muay Thai', fontWeight: FontWeight.w400, fontSize: 15.h,color: AppColors.black),
                                  ],
                                ),
                              ],
                            ),
                  
                  SizedBox(height: 8.h,),
                customDivider(
                  height: 3.h,
                  width: double.infinity
                ),
                  SizedBox(height: 12.h,),
                  customTextBold(title: text, fontWeight: FontWeight.w500, fontSize: 17.h,color: AppColors.black),
                   SizedBox(height: 10.h,),
                   ListView.builder(
                    clipBehavior: Clip.none,
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: days.length,
                    itemBuilder: (BuildContext context, int index) {
                    return Container(
                    height: 35.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(color: index == 0 ? Colors.transparent : AppColors.LightBorder,width: 1.5))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextBold(title: days[index], fontWeight: FontWeight.w500, fontSize: 15.h,color: AppColors.black),
                        customTextBold(title: index == 6 ? '--' : '07:00 PM -  08:30 PM', fontWeight: FontWeight.w400, fontSize: 15.h,color: AppColors.black),
                      ],
                    ),
                  );
                }
                ),
                SizedBox(height: 10.h,),
                customButton(
                colors: AppColors.Secondary,
                text: "BOOK NOW",
                borderRadius: 8.87,
                ontap: (){
                  Navigator.pop(context);   
                 classesBooking(context);
                }
              ),
      ],
    )
  );
}