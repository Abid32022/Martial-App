
import 'package:ev_martial/utils/app_colors.dart';
import 'package:ev_martial/utils/app_constant.dart';
import 'package:ev_martial/view/screens/classes/classes.dart';
import 'package:ev_martial/view/screens/memberships/membership.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text.dart';
import 'accademy_detail.dart';

class SchoolsTabView extends StatelessWidget {
  const SchoolsTabView({super.key});

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
                     itemCount: 4,
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
                       academydetail(context);
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
                          child: Image.asset(AppConstant.mma1,fit: BoxFit.cover,),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 10.h),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(AppConstant.academy1,height: 70.h,width: 70.w,),
                                    SizedBox(width: 10.w,),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                        customTextBold(title: "Apex Martial Arts Academy", fontWeight: FontWeight.w500, fontSize: 16.h,color: AppColors.black),
                                        SizedBox(height: 5.h,),
                                        customTextBold(title: "76 St Maurices Road, Priest Hutton, United Kingdom, LA6 2YZ", fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.darkgrey),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 15.w,),
                                    SvgPicture.asset(AppConstant.circles,height: 24.h,)
                                  ],
                                ),
                                SizedBox(height: 5.h,),
                                Row(
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      height: 45,
                                      child: customButton(
                                      colors: AppColors.skipbtncolor,
                                      text: "MEMBERSHIPS",
                                      borderRadius: 8.87,
                                      ontap: (){
                                        Get.to(() => const MemberShip());
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
                                  text: "CLASSES",
                                  borderRadius: 8.87,
                                  ontap: (){
                                    Get.to(() => const Classes());
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