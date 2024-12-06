import 'package:ev_martial/view/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constant.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text.dart';
import '../../memberships/components/membership_detail.dart';

// ignore: must_be_immutable
class TransactionCard extends StatelessWidget {
    TransactionCard({super.key});
List<String> transaction = [
  'Subscription',
  'One-Time',
  'Trail Period',
];
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
                     itemCount: transaction.length,
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
                        // setState(() {
                        //  isChecked = index;
                        // });
                      },
                      child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 19,vertical: 10.h),
                      decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: AppColors.LightBorder,width: 1.5),top: BorderSide(color: AppColors.LightBorder,width: 1.5))
                      ),
                      child: Column(
                        children: [
                         Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                      Image.asset(AppConstant.transactionimg,height: 42,width: 42,fit: BoxFit.cover,),
                                      SizedBox(width: 10.w,),
                                      Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                      customTextBold(title: "GoCardLess", fontWeight: FontWeight.w500, fontSize: 16.h,color: AppColors.black),
                                      SizedBox(height: 5.h,),
                                      customTextBold(title: "#CM-00234", fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.darkgrey),
                                       SizedBox(height: 5.h,),
                                       customTextBold(title: "Subscription", fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.darkgrey),
                                      ],
                                      )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                      customTextBold(title: "\$20.00", fontWeight: FontWeight.w400, fontSize: 16.h,color: AppColors.black),
                                      SizedBox(height: 5.h,),
                                      customTextBold(title: "Pending", fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.orange),
                                      SizedBox(height: 5.h,),
                                       customTextBold(title: "Mon 21 Aug 2023", fontWeight: FontWeight.w400, fontSize: 14.h,color: AppColors.darkgrey),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                              ),
                            ),
                            SizedBox(width: 15.w,),
                            SvgPicture.asset(AppConstant.circles,height: 24.h,)
                          ],
                         ),
                         SizedBox(height: 5.h,),
                         customDivider(
                          height: 3.h,
                          width: double.infinity
                         ),
                         SizedBox(height: 5.h,),
                        Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 45,
                                  child: customButton(
                                  colors: AppColors.skipbtncolor,
                                  text: "Details",
                                  borderRadius: 8.87,
                                  ontap: (){
                                    memebershipDetailbotoomshett(context,false);
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
                              text: "Invoice",
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
    );
  }
}