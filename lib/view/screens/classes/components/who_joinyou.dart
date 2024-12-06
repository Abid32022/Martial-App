import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../models/who_join_you_model.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constant.dart';
import '../../../widgets/custom_bottomsheet.dart';
import '../../../widgets/custom_text.dart';

void whojoinYou(BuildContext context,){
  List<whojoinYouMOdel> colors = [
    whojoinYouMOdel(AppColors.black,AppColors.redcolor),
    whojoinYouMOdel(AppColors.orange,AppColors.black),
    whojoinYouMOdel(AppColors.black,AppColors.greencolor),
    whojoinYouMOdel(AppColors.indicatorcolor,AppColors.black),
    whojoinYouMOdel(AppColors.black,AppColors.darkgrey),
  ];
  custombottomsheet(
    // height: 400,
    context,
    content: Column(
      children: [
       customTextBold(title: "Ladies Apex Martial Arts.", fontWeight: FontWeight.w500, fontSize: 18.h,color: AppColors.black),
       SizedBox(height: 5.h,),
       customTextBold(title: "31 December, 2023, 07:00 pm", fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.darkgrey),
       SizedBox(height: 20.h,),
            Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Row(
                    children: [
                      customTextBold(title: 'Image', fontWeight: FontWeight.w500, fontSize: 17.h,color: AppColors.primaryblueColor),
                      SizedBox(width: 20.w,),
                      customTextBold(title: 'Student  Name', fontWeight: FontWeight.w500, fontSize: 17.h,color: AppColors.primaryblueColor),
                    ],
                   ),
                   customTextBold(title: '3/20', fontWeight: FontWeight.w500, fontSize: 17.h,color: AppColors.primaryblueColor),
                  ],
                ),
                 SizedBox(height: 8.h,),
                 ListView.builder(
                    clipBehavior: Clip.none,
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: colors.length,
                    itemBuilder: (BuildContext context, int index) {
                    return  Container(
                      padding: EdgeInsets.symmetric(vertical: 10.w),
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(width: 1.5,color: AppColors.LightBorder),top: BorderSide(width: 1.5,color: AppColors.LightBorder))
                      ),
                      child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
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
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                          customTextBold(title: 'Marc Wilson', fontWeight: FontWeight.w500, fontSize: 17.h,color: AppColors.black),
                                          SizedBox(height: 5.h,),
                                          Row(
                                            children: [
                                              SvgPicture.asset(AppConstant.phone,height: 14,),
                                              SizedBox(width: 5.w,),
                                              customTextBold(title: '+14167045420', fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.darkgrey),
                                            ],
                                          ),
                                          ],
                                        ),
                                      ],
                                    ),
                        ),
                             Padding(
                               padding: EdgeInsets.only(top: 10.h),
                               child: SizedBox(
                                width: 90.w,
                                 child: ProgressIndicator(
                                  backgroundColor: colors[index].backgroundColor,
                                  valueColor: colors[index].valueColor,
                                 )
                               ),
                             ),
                      ],
                                      ),
                    );
                    }),
                 
      ],
    )
  );
}


// ignore: must_be_immutable
class ProgressIndicator extends StatelessWidget {
  Color backgroundColor;
  Color valueColor;
 ProgressIndicator({super.key,required this.backgroundColor,required this.valueColor});

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
        backgroundColor: backgroundColor,
        valueColor: AlwaysStoppedAnimation(valueColor),
        minHeight: 10.h,
      );
  }
}