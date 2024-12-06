import 'package:ev_martial/view/screens/memberships/components/membership_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constant.dart';
import '../../../widgets/custom_text.dart';

// ignore: must_be_immutable
class Active extends StatelessWidget {
   Active({super.key});
List<String> images = [
AppConstant.mma4,
AppConstant.mma5,
AppConstant.mma4,
AppConstant.mma5,
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
                     itemCount: images.length,
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
                        memebershipDetailbotoomshett(context,false);
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
                          child: Image.asset(images[index],fit: BoxFit.cover,),
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
                                            customTextBold(title: "Fitness, fun, and motor skills!", fontWeight: FontWeight.w500, fontSize: 16.h,color: AppColors.black),
                                            customTextBold(title: "12/30", fontWeight: FontWeight.w500, fontSize: 16.h,color: AppColors.black),
                                          ],
                                        ),
                                         SizedBox(height: 8.h,),
                                        customTextBold(title: "In Evesham, we're unique in our approach to education. We recognize that the learning needs of a five...", fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.black),
                                        SizedBox(height: 10.h,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            customTextBold(title: "Roger Gracie Malaga", fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.darkgrey),
                                            customTextBold(title: "One Time", fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.darkgrey),
                                          ],
                                        ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 15.w,),
                                    SvgPicture.asset(AppConstant.circles,height: 24.h,)
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