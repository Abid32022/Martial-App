import 'package:ev_martial/view/screens/waiver/subscriptions/subscriptions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../models/apex_martial_signed_model.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_constant.dart';
import '../../../../widgets/custom_text.dart';

// ignore: must_be_immutable
class Signed extends StatelessWidget {
   Signed({super.key});
List<ApexMartialArtsSigned> list = [
  ApexMartialArtsSigned('Pending', AppColors.orange),
  ApexMartialArtsSigned('Signed', AppColors.greencolor),
  ApexMartialArtsSigned('Expired', AppColors.redcolor),
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
                       itemCount: list.length,
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
                        Get.to(() => const WaiverSubscriptions());
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 19,vertical: 6.h),
                        decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: AppColors.LightBorder,width: 1.5),top: BorderSide(color: AppColors.LightBorder,width: 1.5))
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    customTextBold(title: "Brighton Marina Jiu Jitsu Waiver", fontWeight: FontWeight.w500, fontSize: 16.h,color: AppColors.black),
                                    SizedBox(height: 5.h,),
                                    customTextBold(title: "Hi Rana Awais Brighton Marina Jiu Jitsu Academy has invited you to sign the following waiver.", fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.darkgrey),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 15.w,),
                                SvgPicture.asset(AppConstant.circles,height: 24.h,)
                              ],
                            ),
                            SizedBox(height: 5.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                customTextBold(title: "Mon 21 Aug 2023", fontWeight: FontWeight.w500, fontSize: 16.h,color: AppColors.darkgrey),
                                customTextBold(title: list[index].text, fontWeight: FontWeight.w500, fontSize: 16.h,color: list[index].textcolor),
                              ],
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