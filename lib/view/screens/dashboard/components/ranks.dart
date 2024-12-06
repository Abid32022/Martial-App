import 'package:ev_martial/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../models/dash_board_wellcome_sec_model.dart';
import '../../../../utils/app_colors.dart';
import '../../../widgets/custom_text.dart';
import 'package:getwidget/getwidget.dart';
class Ranks extends StatefulWidget {
  const Ranks({super.key});

  @override
  State<Ranks> createState() => _RanksState();
}

class _RanksState extends State<Ranks> {
  List<DashBoardWellcomeSecModel> totalclasses = [
    DashBoardWellcomeSecModel('Ready', '12'),
    DashBoardWellcomeSecModel('Almost Ready', '10'),
    DashBoardWellcomeSecModel('Not Ready', '05'),
  ];
  int angle = 30;
  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 5.h),
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(14),
       border: Border.all(color: AppColors.LightBorder,width: 1.5),
     ),
     child: Column(
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             customTextBold(title: 'Jiu Jitsu - Ranks', fontWeight: FontWeight.w500, fontSize: 17.h,color: AppColors.primaryblueColor),
             Row(
              children: [
                SvgPicture.asset(AppConstant.arrowback),
                SizedBox(width: 10.w,),
                customTextBold(title: 'View All', fontWeight: FontWeight.w500, fontSize: 14.6.h,color: AppColors.primaryblueColor),
                SizedBox(width: 10.w,),
                SvgPicture.asset(AppConstant.arrowfar),
              ],
             ),
           ],
         ),
         SizedBox(height: 10.h,),
         Row(
          children: [
            Expanded(
              child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              SizedBox(
                height: 200.h,
                child: GFProgressBar(
                  circleStartAngle: 0.7,
                  progressHeadType: GFProgressHeadType.circular,
                  animationDuration: 700,
                  progressBarColor: AppColors.greencolor,
                  circleWidth: 10.w,
                  radius: 130,
                  percentage: 0.7,
                  animateFromLastPercentage: true,
                  animation: true,
                  type: GFProgressType.circular,backgroundColor: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customTextBold(title: '55%', fontWeight: FontWeight.w700, fontSize: 30.h,color: AppColors.black),
                      customTextBold(title: '2 Classes to go', fontWeight: FontWeight.w500, fontSize: 11.h,color: AppColors.black),
                              ],
                            ),
                        )
                        )
                        ],
                      ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                      child: Column(
                        children: [
                        Container(
                        padding: EdgeInsets.symmetric(horizontal: 6.w,vertical: 8.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.37),
                          color: AppColors.LightBorder
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(AppConstant.threecircles,height: 14.h,),
                            SizedBox(width: 8.w,),
                            customTextBold(title: 'Total Classes', fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.black),
                            SizedBox(width: 8.w,),
                            customTextBold(title: '100', fontWeight: FontWeight.w700, fontSize: 14.7.h,color: AppColors.black),
                          ],
                        ),
                        ),
                        SizedBox(height: 10.h,),
                        Padding(
                          padding: EdgeInsets.only(left: 15.w),
                          child: ListView.builder(
                          clipBehavior: Clip.none,
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: totalclasses.length,
                          itemBuilder: (BuildContext context, int index) {
                          return Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 5.58,
                                height: 14,
                                decoration: BoxDecoration(
                                  color: index == 1 ? AppColors.orange : index == 2 ? AppColors.redcolor : AppColors.greencolor,
                                  borderRadius: BorderRadius.circular(3.72)
                                ),
                              ),
                              SizedBox(width: 8.w,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  customTextBold(title: 'Ready', fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.black),
                                  Row(
                                    children: [
                                    customTextBold(title: '12', fontWeight: FontWeight.w700, fontSize: 14.7.h,color: AppColors.black),
                                    SizedBox(width: 10.w,),
                                    customTextBold(title: 'Classes', fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.cyancolor),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          );
                          }
                          ),
                        ),
                        ],
                      ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 5.h),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.37),
                      border: Border.all(color: AppColors.LightBorder,width: 1.5),
                      ),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customTextBold(title: 'Blue Belt', fontWeight: FontWeight.w500, fontSize: 15.h,color: AppColors.black),
                        SizedBox(height: 7.h,),
                        SizedBox(
                          height: 14.h,
                          child: const LinearProgressIndicator(
                          backgroundColor: AppColors.primaryblueColor,
                          valueColor: AlwaysStoppedAnimation(AppColors.black),
                          minHeight: 20,
                          ),
                        ),
                         SizedBox(height: 7.h,),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          customTextBold(title: 'Last Grading', fontWeight: FontWeight.w500, fontSize: 12.h,color: AppColors.black),
                          customTextBold(title: '12/09/2023', fontWeight: FontWeight.w500, fontSize: 12.h,color: AppColors.black),
                          ],
                         ),
                         ],
                        ),
                      ),
                    ),
                    SizedBox(width: 6.w,),
                    SvgPicture.asset(AppConstant.arrowfar),
                    SizedBox(width: 6.w,),
                     Expanded(
                      child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 5.h),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.37),
                      border: Border.all(color: AppColors.LightBorder,width: 1.5),
                      ),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customTextBold(title: 'Blue Belt 1 Stripe', fontWeight: FontWeight.w500, fontSize: 15.h,color: AppColors.black),
                        SizedBox(height: 7.h,),
                        SizedBox(
                          height: 14.h,
                          child: const LinearProgressIndicator(
                          backgroundColor: AppColors.primaryblueColor,
                          valueColor: AlwaysStoppedAnimation(AppColors.black),
                          minHeight: 20,
                          ),
                        ),
                         SizedBox(height: 7.h,),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          customTextBold(title: 'Next Grading', fontWeight: FontWeight.w500, fontSize: 12.h,color: AppColors.black),
                          customTextBold(title: '--', fontWeight: FontWeight.w500, fontSize: 12.h,color: AppColors.black),
                          ],
                         ),
                         ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            );
          }
        }
        