import 'package:ev_martial/utils/app_colors.dart';
import 'package:ev_martial/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import '../../../widgets/custom_text.dart';

class DailyPasses extends StatelessWidget {
  const DailyPasses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimationLimiter(
                   child: ListView.builder( 
                   clipBehavior: Clip.none,
                   padding: EdgeInsets.zero,
                   shrinkWrap: true,
                   scrollDirection: Axis.vertical,
                   physics: const BouncingScrollPhysics(parent: NeverScrollableScrollPhysics()),
                   itemCount: 3,
                   itemBuilder: (BuildContext context, int index) {
                   return AnimationConfiguration.staggeredList(
                   position: index,
                   delay: const Duration(milliseconds: 100),
                   child: SlideAnimation(
                    duration: const Duration(milliseconds: 2500),
                   curve: Curves.fastLinearToSlowEaseIn,
                  child: FadeInAnimation(
                    curve: Curves.fastLinearToSlowEaseIn,
                    duration: const Duration(milliseconds: 2500),
                   child: Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(width: 1.5,color: AppColors.LightBorder),top: BorderSide(width: 1.5,color: AppColors.LightBorder))
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(AppConstant.mma4,height: 120.h,width: 103.w,fit: BoxFit.cover,),
                              Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      customTextBold(title: "Daily Pass", fontWeight: FontWeight.w500, fontSize: 18.h,color: AppColors.black),
                                      GestureDetector(
                                      onTap: (){
                                      },
                                    child: SvgPicture.asset(AppConstant.icbackcross,height: 24.h,width: 24.w,))
                                    ],
                                  ),
                                  SizedBox(height: 7.h,),
                                  customTextBold(title: "In Evesham, we're unique in our approach to education. We recognize that the lear...", fontWeight: FontWeight.w400, fontSize: 15.h,color: AppColors.black),
                                  SizedBox(height: 6.h,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(child: customTextBold(title: "Roger Gracie Malaga", fontWeight: FontWeight.w500, fontSize: 15.h,color: AppColors.darkgrey)),
                                      SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.20,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          customTextBold(title: "£ 20.00", fontWeight: FontWeight.w500, fontSize: 15.h,color: AppColors.primaryblueColor),
                                        ],
                                      )),
                                    ],
                                  )
                                  ],
                                ),
                              ))
                            ],
                          )
                        ],
                      ),
                            ),
                  )
                  ),
                 )
               );
             }
           )
        ),
      ],
    );
  }
}