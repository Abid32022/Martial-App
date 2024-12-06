import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constant.dart';
import '../../../widgets/custom_bottomsheet.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_divider.dart';
import '../../../widgets/custom_text.dart';

void memebershipDetailbotoomshett(BuildContext context,bool showbutton){
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
        customTextBold(title: "£ 20.00", fontWeight: FontWeight.w500, fontSize: 18.h,color: AppColors.primaryblueColor),
       ],
       ),
       SizedBox(height: 10.h,),
       customTextBold(title: "In Evesham, we're unique in our approach to education. We recognize that the learning needs of a five-year-old and a ten-year-old are quite different. That's why we have distinct classes for three age groups: 4-6, 7-9, and 10-14-year-olds. This ensures that each student receives tailored instruction for their stage of development.",
       fontWeight: FontWeight.w400, fontSize: 15.h,color: AppColors.black),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Row(
                    children: [
                      customTextBold(title: 'Image', fontWeight: FontWeight.w500, fontSize: 18.h,color: AppColors.primaryblueColor),
                      SizedBox(width: 20.w,),
                      customTextBold(title: 'Class Name', fontWeight: FontWeight.w500, fontSize: 18.h,color: AppColors.primaryblueColor),
                    ],
                   ),
                   customTextBold(title: 'Frequency', fontWeight: FontWeight.w500, fontSize: 18.h,color: AppColors.primaryblueColor),
                  ],
                ),
                SizedBox(height: 8.h,),
                   ListView.builder(
                    clipBehavior: Clip.none,
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                    return Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    decoration: const BoxDecoration(
                      border: Border(top: BorderSide(color: AppColors.LightBorder,width: 1.5),bottom: BorderSide(color: AppColors.LightBorder,width: 1.5))
                    ),
                    child: Row(
                    children: [
                        Container(
                            height: 50.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(AppConstant.profile2,fit: BoxFit.cover,),
                                ),
                                SizedBox(width: 10.w,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        customTextBold(title: 'Daniel Day-Lewis', fontWeight: FontWeight.w500, fontSize: 18.h,color: AppColors.black),
                                        customTextBold(title: 'Unlimited Week', fontWeight: FontWeight.w400, fontSize: 15.h,color: AppColors.darkgrey),
                                      ],
                                    ),
                                    SizedBox(height: 5.h,),
                                    customTextBold(title: 'Hutton, United Kingdom.', fontWeight: FontWeight.w400, fontSize: 15.h,color: AppColors.darkgrey.withOpacity(0.7)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                  );
                }
                ),
               showbutton ? SizedBox(height: 10.h,) : const SizedBox(),
                showbutton ? customButton(
                colors: AppColors.Secondary,
                text: "PURCHASE",
                borderRadius: 8.87,
                ontap: (){
                //   Navigator.pop(context);   
                //  classesBooking(context);
                }
              ) : const SizedBox()
      ],
    )
  );
}