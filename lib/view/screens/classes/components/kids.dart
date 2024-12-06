import 'package:ev_martial/view/screens/auth/widgets/custom_check_box.dart';
import 'package:ev_martial/view/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constant.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text.dart';
import 'class_booking.dart';
import 'classes_detail.dart';

// ignore: must_be_immutable
class KidsTabView extends StatefulWidget {
   const KidsTabView({super.key});

  @override
  State<KidsTabView> createState() => _KidsTabViewState();
}

class _KidsTabViewState extends State<KidsTabView> {
List<String> images = [
AppConstant.mma2,
AppConstant.mma3,
AppConstant.mma1,
AppConstant.mma2,
];
int isChecked = -1;
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
                        setState(() {
                         isChecked = index;
                        });
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
                          child: Stack(
                            children: [
                              Image.asset(images[index],fit: BoxFit.cover,height: 231.h,width: Get.width,),
                              Positioned(
                              left: 12.w,
                              top: 10.h,
                              child: CustomCheckBox(
                                isChecked: isChecked == index ? true : false,
                              ),
                              ),
                            ],
                          ),
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
                                        Wrap(
                                        runSpacing: 5.h,
                                        spacing: 20.w,
                                          children: [
                                            customTextBold(title: "Karate", fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.darkgrey),
                                            customTextBold(title: "Mon 21 Aug 2023", fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.darkgrey),
                                            customTextBold(title: "07:00 PM - 08:30 PM", fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.darkgrey),
                                          ],
                                        ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 15.w,),
                                    SvgPicture.asset(AppConstant.circles,height: 24.h,)
                                  ],
                                ),
                                 SizedBox(height: 6.h,),
                                         customDivider(
                                          height: 2.h,
                                          width: double.infinity,
                                         ),
                                         SizedBox(height: 6.h,),
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
                                                  classesDetail(context,'Time Table');
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
                                            text: "BOOK NOW",
                                            borderRadius: 8.87,
                                            ontap: (){
                                              classesBooking(context);
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