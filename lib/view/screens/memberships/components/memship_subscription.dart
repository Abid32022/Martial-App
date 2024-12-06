import 'package:ev_martial/view/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../models/dash_board_wellcome_sec_model.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constant.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text.dart';
import 'membership_detail.dart';

// ignore: must_be_immutable
class MemShipSubscription extends StatelessWidget {
   MemShipSubscription({super.key});
List<DashBoardWellcomeSecModel> subscriptions = [
  DashBoardWellcomeSecModel(AppConstant.mma4, 'Daily Pass'),
  DashBoardWellcomeSecModel(AppConstant.mma5, 'Karate'),
  DashBoardWellcomeSecModel(AppConstant.mma4, 'Daily Pass'),
  DashBoardWellcomeSecModel(AppConstant.mma5, 'Karate'),
];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 5.h,),
          AnimationLimiter(
                     child: ListView.builder(
                     clipBehavior: Clip.none,
                     padding: EdgeInsets.zero,
                     shrinkWrap: true,
                     scrollDirection: Axis.vertical,
                     physics: const BouncingScrollPhysics(parent: NeverScrollableScrollPhysics()),
                     itemCount: subscriptions.length,
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
                    padding: EdgeInsets.only(bottom: 15.h),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: (){
                       
                      },
                      child: Container(
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: AppColors.LightBorder,width: 1.5))
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                           height: 231.h,
                           width: Get.width,
                          child: Image.asset(subscriptions[index].icon,fit: BoxFit.cover,),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 10.h),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            customTextBold(title: subscriptions[index].text, fontWeight: FontWeight.w500, fontSize: 16.h,color: AppColors.black),
                                            customTextBold(title: "12/30", fontWeight: FontWeight.w500, fontSize: 14.h,color: AppColors.black),
                                          ],
                                        ),
                                        SizedBox(height: 8.h,),
                                        customTextBold(title: "In Evesham, we're unique in our approach to education. We recognize that the learning needs of a five...", fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.black),
                                        SizedBox(height: 10.h,),
                                        customTextBold(title: "Roger Gracie Malaga", fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.darkgrey),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 15.w,),
                                    SvgPicture.asset(AppConstant.circles,height: 24.h,)
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
                                      text: "DETAILS",
                                      borderRadius: 8.87,
                                      ontap: (){
                                        memebershipDetailbotoomshett(context,true);
                                      }
                                      ),
                                    ),
                                  ),
                              SizedBox(width: 7.w,),
                              Expanded(
                                child: SizedBox(
                                  height: 45,
                                  child: customButton(
                                  fontColor: AppColors.primaryblueColor,
                                  colors: AppColors.Secondary,
                                  text: "PURCHASE",
                                  borderRadius: 8.87,
                                  ontap: (){
                                    // Get.to(() => const Classes());
                                  }
                                   ),
                                ),
                              ),
                                ],
                              ),
                              ],
                            ),
                          )
                        ],
                      ),
                     ),
                    ),
                  ),
                 ),
                  )
                  );
                  }
                  )
                  ),
        ],
      ),
    );
  }
}